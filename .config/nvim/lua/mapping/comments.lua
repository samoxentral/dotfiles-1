local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

map('n', '<leader>/', require('Comment.api').toggle.linewise.current, default_opts)
map('v', '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", default_opts)
