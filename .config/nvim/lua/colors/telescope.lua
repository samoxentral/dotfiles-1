local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'TelescopeBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopePromptBorder', { fg = colors.black2, bg = colors.black2 })
set_hl(0, 'TelescopePromptNormal', { fg = base16.base05, bg = colors.black2 })
set_hl(0, 'TelescopePromptPrefix', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'TelescopeNormal', { bg = colors.darker_black })
set_hl(0, 'TelescopePreviewTitle', { fg = base16.base00, bg = base16.base0B })
set_hl(0, 'TelescopePromptTitle', { fg = base16.base00, bg = colors.red })
set_hl(0, 'TelescopeResultsTitle', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopeSelection', { bg = base16.base002, fg = base16.base05 })
set_hl(0, 'TelescopeResultsDiffAdd', { fg = base16.base0B })
set_hl(0, 'TelescopeResultsDiffChange', { fg = colors.yellow })
set_hl(0, 'TelescopeResultsDiffDelete', { fg = colors.red })
