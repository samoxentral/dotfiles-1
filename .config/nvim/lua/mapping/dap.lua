local map = vim.keymap.set

map('n', '<F4>', require('dapui').toggle)
map('n', '<F5>', require('dap').toggle_breakpoint)
map('n', '<F9>', require('dap').continue)

map('n', '<F6>', require('dap').step_over)
map('n', '<F7>', require('dap').step_into)
map('n', '<F8>', require('dap').step_out)

map('n', '<Leader>di', require('dapui').toggle)
map('n', '<Leader>dt', require('dap').toggle_breakpoint)

map('n', '<Leader>dc', require('dap').continue)
map('n', '<Leader>dsv', require('dap').step_over)
map('n', '<Leader>dsi', require('dap').step_into)
map('n', '<Leader>dso', require('dap').step_out)

map('n', '<Leader>duh', require('dap.ui.widgets').hover)
map('n', '<Leader>duf', function() local widgets = require('dap.ui.widgets'); widgets.centered_float(widgets.scopes) end)

map('n', '<Leader>dro', require('dap').repl.open)

