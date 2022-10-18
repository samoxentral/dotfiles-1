local status_dap, dap = pcall(require, 'dap')
local status_dapui, dapui = pcall(require, 'dapui')
if not status_dap or not status_dapui then
  return
end

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
