local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'LspSagaFinderSelection', { fg = colors.base0D, bg = 'none', bold = true })

set_hl(0, 'LspFloatWinBorder', { fg = colors.base00_X, bg = colors.base00_X })
set_hl(0, 'LspFloatWinNormal', { bg = colors.base00_X })

set_hl(0, 'LspSagaAutoPreviewLink', { bg = colors.base01 })

set_hl(0, 'TargetFileName', { fg = colors.base04 })
