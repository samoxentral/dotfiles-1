local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'htmlTag', { fg = colors.base0C})
set_hl(0, 'htmlEndTag', { fg = colors.base0C})
set_hl(0, 'htmlTagN', { fg = colors.base0C})
set_hl(0, 'htmlTagName', { fg = colors.base0C})
set_hl(0, 'htmlArg', { fg = colors.base0B})
set_hl(0, 'htmlString', { fg = colors.base0A})
