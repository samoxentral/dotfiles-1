local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'djangoVarBlock', { fg = colors.base07 })
set_hl(0, 'djangoTagBlock', { fg = colors.base07 })
set_hl(0, 'djangoFilter', { fg = colors.base07 })
set_hl(0, 'djangoArgument', { fg = colors.base07 })
set_hl(0, 'djangoStatement', { fg = colors.base0E })
set_hl(0, 'djangoVarError', { fg = colors.base0E })
