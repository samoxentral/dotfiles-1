local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

map('n', '<leader>e', ':NvimTreeFocus<cr>', default_opts)
map('n', '<C-n>', ':NvimTreeToggle<cr>', default_opts)
