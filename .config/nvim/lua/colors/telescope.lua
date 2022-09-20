local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors').colors

set_hl(0, 'TelescopeBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopePromptBorder', { fg = colors.black2, bg = colors.black2 })
set_hl(0, 'TelescopePromptNormal', { fg = colors.white, bg = colors.black2 })
set_hl(0, 'TelescopePromptPrefix', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'TelescopeNormal', { bg = colors.darker_black })
set_hl(0, 'TelescopePreviewTitle', { fg = colors.black, bg = colors.green })
set_hl(0, 'TelescopePromptTitle', { fg = colors.black, bg = colors.red })
set_hl(0, 'TelescopeResultsTitle', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopeSelection', { bg = colors.black2, fg = colors.white })
set_hl(0, 'TelescopeResultsDiffAdd', { fg = colors.green })
set_hl(0, 'TelescopeResultsDiffChange', { fg = colors.yellow })
set_hl(0, 'TelescopeResultsDiffDelete', { fg = colors.red })
