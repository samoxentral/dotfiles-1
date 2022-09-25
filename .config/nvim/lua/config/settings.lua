local opt = vim.opt
local g = vim.g

-- use filetype.lua instead of filetype.vim
g.did_load_filetypes = 0
g.do_filetype_lua = 1

opt.spelllang = { 'en_us', 'ru' }

opt.scrolloff = 15

opt.laststatus = 3 -- global statusline
opt.statusline = "%!v:lua.require('user.statusline').run()"

opt.showtabline = 2
opt.tabline = "%!v:lua.require('user.tabline').run()"

opt.showmode = false
opt.title = true
opt.clipboard = 'unnamedplus'
opt.cul = true -- cursor line

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

opt.fillchars = { eob = ' ' }
opt.ignorecase = true
opt.smartcase = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append 'sI'

opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 8
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

g.mapleader = ' '

vim.cmd [[
  iabbrev retrun return
]]

vim.cmd [[
  " set cursorline!
]]

-- set shada path
vim.schedule(function()
  vim.opt.shadafile = vim.fn.expand '$HOME' .. '/.local/share/nvim/shada/main.shada'
  vim.cmd [[ silent! rsh ]]
end)
