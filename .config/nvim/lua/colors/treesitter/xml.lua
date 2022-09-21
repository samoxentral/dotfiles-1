local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'xmlTagName', { fg = colors.base0C })
set_hl(0, 'xmlTag', { fg = colors.base0C })
set_hl(0, 'xmlAttrib', { fg = colors.base0B })
set_hl(0, 'xmlString', { fg = colors.base0A })
