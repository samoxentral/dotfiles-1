local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

map('n', '<leader>/', require('Comment.api').toggle_current_linewise, default_opts)
map('v', '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", default_opts)
