local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

local builtin = require 'telescope.builtin'
local dap = require('telescope').extensions.dap
local file_browser = require('telescope').extensions.file_browser

local function telescope_buffer_dir()
  return vim.fn.expand '%:p:h'
end

local execute = require 'user.finder'

local function visual_selection_range()
  local _, csrow, cscol, _ = unpack(vim.fn.getpos "'<")
  local _, cerow, cecol, _ = unpack(vim.fn.getpos "'>")
  if csrow < cerow or (csrow == cerow and cscol <= cecol) then
    return csrow - 1, cscol - 1, cerow - 1, cecol
  else
    return cerow - 1, cecol - 1, csrow - 1, cscol
  end
end

map('n', '<leader>ff', function()
  execute(builtin.find_files)
end, default_opts)
map('n', '<leader>fa', function()
  builtin.find_files { follow = true, no_ignore = true, hidden = true }
end, default_opts)
map('n', '<leader>fw', function()
  execute(builtin.live_grep)
end, default_opts)
map('n', '<leader>fb', builtin.buffers, default_opts)
map('n', '<leader>fh', builtin.help_tags, default_opts)
map('n', '<leader>fo', builtin.oldfiles, default_opts)
map('n', '<leader>tk', builtin.keymaps, default_opts)

map('n', '<leader>cm', builtin.git_commits, default_opts)
map('n', '<leader>gt', builtin.git_status, default_opts)

map('n', '<leader>dd', dap.list_breakpoints)

map('n', '<leader>sf', function()
  file_browser.file_browser {
    path = '%:p:h',
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = 'normal',
    layout_config = { height = 40 },
  }
end)
