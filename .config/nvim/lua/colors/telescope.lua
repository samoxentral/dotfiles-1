local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'TelescopeBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopePromptBorder', { fg = colors.black2, bg = colors.black2 })
set_hl(0, 'TelescopePromptNormal', { fg = colors.base05, bg = colors.black2 })
set_hl(0, 'TelescopePromptPrefix', { fg = colors.base08, bg = colors.black2 })
set_hl(0, 'TelescopeNormal', { bg = colors.darker_black })
set_hl(0, 'TelescopePreviewTitle', { fg = colors.base00, bg = colors.base0B })
set_hl(0, 'TelescopePromptTitle', { fg = colors.base00, bg = colors.base08 })
set_hl(0, 'TelescopeResultsTitle', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'TelescopeSelection', { bg = colors.base02, fg = colors.base05 })
set_hl(0, 'TelescopeResultsDiffAdd', { fg = colors.base0B })
set_hl(0, 'TelescopeResultsDiffChange', { fg = colors.base0A })
set_hl(0, 'TelescopeResultsDiffDelete', { fg = colors.base08 })
