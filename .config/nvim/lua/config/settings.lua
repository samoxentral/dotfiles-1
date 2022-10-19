local opt = vim.opt
local g = vim.g

opt.spelllang = { 'en_us' }
-- opt.spell = true

opt.scrolloff = 15

opt.laststatus = 3 -- global statusline
opt.statusline = "%!v:lua.require('user.statusline').run()"

opt.showtabline = 2
opt.tabline = "%!v:lua.require('user.tabline').run()"

opt.showmode = false
opt.title = true
opt.clipboard = 'unnamedplus'
opt.cul = true -- cursor line
opt.mouse = ''

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

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
