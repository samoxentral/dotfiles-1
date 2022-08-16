local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

local builtin = require 'telescope.builtin'
local dap = require 'telescope'.extensions.dap

local execute = require 'user.finder'

map('n', '<leader>ff', function() execute(builtin.find_files) end, default_opts)
map('n', '<leader>fa', function() builtin.find_files({ follow = true, no_ignore = true, hidden = true }) end,
  default_opts)
map('n', '<leader>fw', function() execute(builtin.live_grep) end, default_opts)
map('n', '<leader>fb', builtin.buffers, default_opts)
map('n', '<leader>fh', builtin.help_tags, default_opts)
map('n', '<leader>fo', builtin.oldfiles, default_opts)
map('n', '<leader>tk', builtin.keymaps, default_opts)

map('n', '<leader>cm', builtin.git_commits, default_opts)
map('n', '<leader>gt', builtin.git_status, default_opts)

map('n', '<leader>dd', dap.list_breakpoints)
