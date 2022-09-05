local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

map('n', '<leader>gdo', ':DiffviewOpen<CR>', default_opts)
map('n', '<leader>gdc', ':DiffviewClose<CR>', default_opts)
