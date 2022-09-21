local set_hl = vim.api.nvim_set_hl
local colors = require('colors.colors').colors
local base16 = require('colors.colors').base16

-- nvim cmp
set_hl(0, 'CmpItemAbbr', { fg = base16.base05 })
set_hl(0, 'CmpItemAbbrMatch', { fg = colors.blue, bold = true })
set_hl(0, 'CmpBorder', { fg = colors.grey })
set_hl(0, 'CmpDocBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'CmPmenu', { bg = colors.darker_black })

-- cmp item kinds
set_hl(0, 'CmpItemKindConstant', { fg = base16.base09 })
set_hl(0, 'CmpItemKindFunction', { fg = base16.base0D })
set_hl(0, 'CmpItemKindIdentifier', { fg = base16.base08 })
set_hl(0, 'CmpItemKindField', { fg = base16.base08 })
set_hl(0, 'CmpItemKindVariable', { fg = base16.base0E })
set_hl(0, 'CmpItemKindSnippet', { fg = colors.red })
set_hl(0, 'CmpItemKindText', { fg = base16.base0B })
set_hl(0, 'CmpItemKindStructure', { fg = base16.base0E })
set_hl(0, 'CmpItemKindType', { fg = base16.base0A })
set_hl(0, 'CmpItemKindKeyword', { fg = base16.base07 })
set_hl(0, 'CmpItemKindMethod', { fg = base16.base0D })
set_hl(0, 'CmpItemKindConstructor', { fg = colors.blue })
set_hl(0, 'CmpItemKindFolder', { fg = base16.base07 })
set_hl(0, 'CmpItemKindModule', { fg = base16.base0A })
set_hl(0, 'CmpItemKindProperty', { fg = base16.base08 })
set_hl(0, 'CmpItemKindUnit', { fg = base16.base0E })
set_hl(0, 'CmpItemKindFil', { fg = base16.base07 })
set_hl(0, 'CmpItemKindColo', { fg = colors.red })
set_hl(0, 'CmpItemKindReferenc', { fg = base16.base05 })
set_hl(0, 'CmpItemKindStruc', { fg = base16.base0E })
set_hl(0, 'CmpItemKindOperato', { fg = base16.base05 })
set_hl(0, 'CmpItemKindTypeParamete', { fg = base16.base08 })
