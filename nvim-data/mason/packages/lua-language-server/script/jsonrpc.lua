local json     = require 'json'
local inspect  = require 'inspect'
local pcall    = pcall
local tonumber = tonumber

---@class jsonrpc
local m = {}
m.type = 'jsonrpc'

function m.encode(pack)
    pack.jsonrpc = '2.0'
    local content = json.encode(pack)
    local buf = ('Content-Length: %d\r\n\r\n%s'):format(#content, content)
    return buf
end

---@param reader fun(arg: integer):string
local function readProtoHead(reader)
    local head = {}
    local line = ''
    while true do
        local char = reader(1)
        if char == nil then
            -- 说明管道已经关闭了
            return nil, 'Disconnected!'
        end
        line = line .. char
        if line == '\r\n' then
            break
        end
        if line:sub(-2) ~= '\r\n' then
            goto continue
        end
        local k, v = line:match '^([^:]+)%s*%:%s*(.+)\r\n$'
        if not k then
            return nil, 'Proto header error: ' .. line
        end
        if k == 'Content-Length' then
            v = tonumber(v)
        end
        head[k] = v
        line = ''
        ::continue::
    end
    return head
end

---@param reader fun(arg: integer):string
function m.decode(reader)
    local head, err = readProtoHead(reader)
    if not head then
        return nil, err
    end
    local len = head['Content-Length']
    if not len then
        return nil, 'Proto header error: ' .. inspect(head)
    end
    local content = reader(len)
    if not content then
        return nil, 'Proto read error'
    end
    ---@type any
    local null = json.null
    json.null = nil
    local suc, res = pcall(json.decode, content)
    json.null = null
    if not suc then
        return nil, 'Proto parse error: ' .. res
    end
    return res
end

return m
