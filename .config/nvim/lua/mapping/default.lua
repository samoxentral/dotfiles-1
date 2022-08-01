local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- Fast escape
map('i', 'jk', '<Esc>', { noremap = true })

map('n', '<ESC>', ':noh <cr>', default_opts)
map('n', '<C-s>', ':w <cr>', default_opts)

-- Disable arrows
map('', '<up>', ':echoe "Use k"<CR>', { noremap = true, silent = false })
map('', '<down>', ':echoe "Use j"<CR>', { noremap = true, silent = false })
map('', '<left>', ':echoe "Use h"<CR>', { noremap = true, silent = false })
map('', '<right>', ':echoe "Use l"<CR>', { noremap = true, silent = false })

-- navigation
map('i', '<C-b>', '<ESC>^i', default_opts)
map('i', '<C-e>', '<End>', default_opts)

map('i', '<C-h>', '<C-w>h', default_opts)
map('i', '<C-k>', '<C-w>k', default_opts)
map('i', '<C-j>', '<C-w>j', default_opts)
map('i', '<C-l>', '<C-w>l', default_opts)

map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- buffers
map('n', '<S-b>', ':enew<cr>', default_opts)
map('n', '<Tab>', ':Tbufnext <cr>', default_opts)
map('n', '<S-Tab>', ':Tbufprev <cr>', default_opts)

map('n', 'tn', ':tabedit <cr>', default_opts)
map('n', '<leader>tp', ':tabprevious<cr>', default_opts)
map('n', '<leader>tn', ':tabnext<cr>', default_opts)
map('n', '<leader>x', function() require('user.tab-utils').close_buffer() end, default_opts)
