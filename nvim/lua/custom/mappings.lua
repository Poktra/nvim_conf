local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line.",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or resume the debugger.",
    }
  }
}
return M
