local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'AlphaHeader', { fg = base16.base04 })
set_hl(0, 'AlphaButtons', { fg = colors.light_grey })
