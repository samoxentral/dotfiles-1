local map = vim.keymap.set
local default_opts = { noremap = false, silent = false }

map('n', '<leader>tt', function() require('nvterm.terminal').toggle('float') end, default_opts)
