local set_hl = vim.api.nvim_set_hl
local base16 = require 'colors.colors'.base16
local colors = require 'colors.colors'.colors

local kek2 = { fg = colors.cyan, bg = colors.cyan }

set_hl(0, 'LspSagaFinderSelection', { fg = colors.blue, bg = 'none', bold = true })

set_hl(0, 'LspFloatWinBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'LspFloatWinNormal', { bg = colors.darker_black })

set_hl(0, 'LspSagaLspFinderBorder', kek2)
set_hl(0, 'LspSagaAutoPreview', kek2)
set_hl(0, 'LspSagaAutoPreviewLink', { bg = colors.one_bg3 })

set_hl(0, 'TargetFileName', { fg = colors.grey_fg })
