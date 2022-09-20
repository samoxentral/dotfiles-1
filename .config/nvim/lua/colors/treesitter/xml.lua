local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16

set_hl(0, 'xmlTagName', { fg = base16.base0C })
set_hl(0, 'xmlTag', { fg = base16.base0C })
set_hl(0, 'xmlAttrib', { fg = base16.base0B })
set_hl(0, 'xmlString', { fg = base16.base0A })
