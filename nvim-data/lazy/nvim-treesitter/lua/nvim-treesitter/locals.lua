-- Functions to handle locals
-- Locals are a generalization of definition and scopes
-- its the way nvim-treesitter uses to "understand" the code

local queries = require "nvim-treesitter.query"
local ts_utils = require "nvim-treesitter.ts_utils"
local ts = vim.treesitter
local api = vim.api

local M = {}

function M.collect_locals(bufnr)
  return queries.collect_group_results(bufnr, "locals")
end

-- Iterates matches from a locals query file.
-- @param bufnr the buffer
-- @param root the root node
function M.iter_locals(bufnr, root)
  return queries.iter_group_results(bufnr, "locals", root)
end

---@param bufnr integer
---@return any
function M.get_locals(bufnr)
  return queries.get_matches(bufnr, "locals")
end

-- Creates unique id for a node based on text and range
---@param scope TSNode: the scope node of the definition
---@param node_text string: the node text to use
---@return string: a string id
function M.get_definition_id(scope, node_text)
  -- Add a valid starting character in case node text doesn't start with a valid one.
  return table.concat({ "k", node_text or "", scope:range() }, "_")
end

function M.get_definitions(bufnr)
  local locals = M.get_locals(bufnr)

  local defs = {}

  for _, loc in ipairs(locals) do
    if loc.definition then
      table.insert(defs, loc.definition)
    end
  end

  return defs
end

function M.get_scopes(bufnr)
  local locals = M.get_locals(bufnr)

  local scopes = {}

  for _, loc in ipairs(locals) do
    if loc.scope and loc.scope.node then
      table.insert(scopes, loc.scope.node)
    end
  end

  return scopes
end

function M.get_references(bufnr)
  local locals = M.get_locals(bufnr)

  local refs = {}

  for _, loc in ipairs(locals) do
    if loc.reference and loc.reference.node then
      table.insert(refs, loc.reference.node)
    end
  end

  return refs
end

-- Gets a table with all the scopes containing a node
-- The order is from most specific to least (bottom up)
---@param node TSNode
---@param bufnr integer
---@return TSNode[]
function M.get_scope_tree(node, bufnr)
  local scopes = {} ---@type TSNode[]

  for scope in M.iter_scope_tree(node, bufnr) do
    table.insert(scopes, scope)
  end

  return scopes
end

-- Iterates over a nodes scopes moving from the bottom up
---@param node TSNode
---@param bufnr integer
---@return fun(): TSNode|nil
function M.iter_scope_tree(node, bufnr)
  local last_node = node
  return function()
    if not last_node then
      return
    end

    local scope = M.containing_scope(last_node, bufnr, false) or ts_utils.get_root_for_node(node)

    last_node = scope:parent()

    return scope
  end
end

-- Gets a table of all nodes and their 'kinds' from a locals list
---@param local_def any: the local list result
---@return table: a list of node entries
function M.get_local_nodes(local_def)
  local result = {}

  M.recurse_local_nodes(local_def, function(def, _node, kind)
    table.insert(result, vim.tbl_extend("keep", { kind = kind }, def))
  end)

  return result
end

-- Recurse locals results until a node is found.
-- The accumulator function is given
-- * The table of the node
-- * The node
-- * The full definition match `@definition.var.something` -> 'var.something'
-- * The last definition match `@definition.var.something` -> 'something'
---@param local_def any The locals result
---@param accumulator function The accumulator function
---@param full_match? string The full match path to append to
---@param last_match? string The last match
function M.recurse_local_nodes(local_def, accumulator, full_match, last_match)
  if type(local_def) ~= "table" then
    return
  end

  if local_def.node then
    accumulator(local_def, local_def.node, full_match, last_match)
  else
    for match_key, def in pairs(local_def) do
      M.recurse_local_nodes(def, accumulator, full_match and (full_match .. "." .. match_key) or match_key, match_key)
    end
  end
end

-- Get a single dimension table to look definition nodes.
-- Keys are generated by using the range of the containing scope and the text of the definition node.
-- This makes looking up a definition for a given scope a simple key lookup.
--
-- This is memoized by buffer tick. If the function is called in succession
-- without the buffer tick changing, then the previous result will be used
-- since the syntax tree hasn't changed.
--
-- Usage lookups require finding the definition of the node, so `find_definition`
-- is called very frequently, which is why this lookup must be fast as possible.
--
---@param bufnr integer: the buffer
---@return table result: a table for looking up definitions
M.get_definitions_lookup_table = ts_utils.memoize_by_buf_tick(function(bufnr)
  local definitions = M.get_definitions(bufnr)
  local result = {}

  for _, definition in ipairs(definitions) do
    for _, node_entry in ipairs(M.get_local_nodes(definition)) do
      local scopes = M.get_definition_scopes(node_entry.node, bufnr, node_entry.scope)
      -- Always use the highest valid scope
      local scope = scopes[#scopes]
      local node_text = ts.get_node_text(node_entry.node, bufnr)
      local id = M.get_definition_id(scope, node_text)

      result[id] = node_entry
    end
  end

  return result
end)

-- Gets all the scopes of a definition based on the scope type
-- Scope types can be
--
-- "parent": Uses the parent of the containing scope, basically, skipping a scope
-- "global": Uses the top most scope
-- "local": Uses the containing scope of the definition. This is the default
--
---@param node TSNode: the definition node
---@param bufnr integer: the buffer
---@param scope_type string: the scope type
function M.get_definition_scopes(node, bufnr, scope_type)
  local scopes = {}
  local scope_count = 1 ---@type integer|nil

  -- Definition is valid for the containing scope
  -- and the containing scope of that scope
  if scope_type == "parent" then
    scope_count = 2
    -- Definition is valid in all parent scopes
  elseif scope_type == "global" then
    scope_count = nil
  end

  local i = 0
  for scope in M.iter_scope_tree(node, bufnr) do
    table.insert(scopes, scope)
    i = i + 1

    if scope_count and i >= scope_count then
      break
    end
  end

  return scopes
end

---@param node TSNode
---@param bufnr integer
---@return TSNode node
---@return TSNode scope
---@return string|nil kind
function M.find_definition(node, bufnr)
  local def_lookup = M.get_definitions_lookup_table(bufnr)
  local node_text = ts.get_node_text(node, bufnr)

  for scope in M.iter_scope_tree(node, bufnr) do
    local id = M.get_definition_id(scope, node_text)

    if def_lookup[id] then
      local entry = def_lookup[id]

      return entry.node, scope, entry.kind
    end
  end

  return node, ts_utils.get_root_for_node(node), nil
end

-- Finds usages of a node in a given scope.
---@param node TSNode the node to find usages for
---@param scope_node TSNode the node to look within
---@return TSNode[]: a list of nodes
function M.find_usages(node, scope_node, bufnr)
  bufnr = bufnr or api.nvim_get_current_buf()
  local node_text = ts.get_node_text(node, bufnr)

  if not node_text or #node_text < 1 then
    return {}
  end

  local scope_node = scope_node or ts_utils.get_root_for_node(node)
  local usages = {}

  for match in M.iter_locals(bufnr, scope_node) do
    if match.reference and match.reference.node and ts.get_node_text(match.reference.node, bufnr) == node_text then
      local def_node, _, kind = M.find_definition(match.reference.node, bufnr)

      if kind == nil or def_node == node then
        table.insert(usages, match.reference.node)
      end
    end
  end

  return usages
end

---@param node TSNode
---@param bufnr? integer
---@param allow_scope? boolean
---@return TSNode|nil
function M.containing_scope(node, bufnr, allow_scope)
  local bufnr = bufnr or api.nvim_get_current_buf()
  local allow_scope = allow_scope == nil or allow_scope == true

  local scopes = M.get_scopes(bufnr)
  if not node or not scopes then
    return
  end

  local iter_node = node

  while iter_node ~= nil and not vim.tbl_contains(scopes, iter_node) do
    iter_node = iter_node:parent()
  end

  return iter_node or (allow_scope and node or nil)
end

function M.nested_scope(node, cursor_pos)
  local bufnr = api.nvim_get_current_buf()

  local scopes = M.get_scopes(bufnr)
  if not node or not scopes then
    return
  end

  local row = cursor_pos.row ---@type integer
  local col = cursor_pos.col ---@type integer
  local scope = M.containing_scope(node)

  for _, child in ipairs(ts_utils.get_named_children(scope)) do
    local row_, col_ = child:start()
    if vim.tbl_contains(scopes, child) and ((row_ + 1 == row and col_ > col) or row_ + 1 > row) then
      return child
    end
  end
end

function M.next_scope(node)
  local bufnr = api.nvim_get_current_buf()

  local scopes = M.get_scopes(bufnr)
  if not node or not scopes then
    return
  end

  local scope = M.containing_scope(node)

  local parent = scope:parent()
  if not parent then
    return
  end

  local is_prev = true
  for _, child in ipairs(ts_utils.get_named_children(parent)) do
    if child == scope then
      is_prev = false
    elseif not is_prev and vim.tbl_contains(scopes, child) then
      return child
    end
  end
end

---@param node TSNode
---@return TSNode|nil
function M.previous_scope(node)
  local bufnr = api.nvim_get_current_buf()

  local scopes = M.get_scopes(bufnr)
  if not node or not scopes then
    return
  end

  local scope = M.containing_scope(node)

  local parent = scope:parent()
  if not parent then
    return
  end

  local is_prev = true
  local children = ts_utils.get_named_children(parent)
  for i = #children, 1, -1 do
    if children[i] == scope then
      is_prev = false
    elseif not is_prev and vim.tbl_contains(scopes, children[i]) then
      return children[i]
    end
  end
end

return M
