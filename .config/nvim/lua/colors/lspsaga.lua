local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'LspSagaFinderSelection', { fg = colors.base0D, bg = 'none', bold = true })

set_hl(0, 'LspFloatWinBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'LspFloatWinNormal', { bg = colors.darker_black })

set_hl(0, 'LspSagaAutoPreviewLink', { bg = colors.one_bg3 })

set_hl(0, 'TargetFileName', { fg = colors.base04 })
