local status, dap = pcall(require, 'dap')
if not status then
  return
end

local dapui = require 'dapui'
local map = vim.keymap.set

map('n', '<F4>', dapui.toggle)

map('n', '<F6>', dap.step_over)
map('n', '<F7>', dap.step_into)
map('n', '<F8>', dap.step_out)

map('n', '<Leader>di', dapui.toggle)
map('n', '<Leader>dt', dap.toggle_breakpoint)

map('n', '<Leader>dc', dap.continue)

map('n', '<Leader>duf', function()
  local widgets = require 'dap.ui.widgets'
  widgets.centered_float(widgets.scopes)
end)

map('n', '<Leader>dro', dap.repl.open)
