local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

-- nvim cmp
set_hl(0, 'CmpItemAbbr', { fg = colors.base05 })
set_hl(0, 'CmpItemAbbrMatch', { fg = colors.blue, bold = true })
set_hl(0, 'CmpBorder', { fg = colors.grey })
set_hl(0, 'CmpDocBorder', { fg = colors.darker_black, bg = colors.darker_black })
set_hl(0, 'CmPmenu', { bg = colors.darker_black })

-- cmp item kinds
set_hl(0, 'CmpItemKindConstant', { fg = colors.base09 })
set_hl(0, 'CmpItemKindFunction', { fg = colors.base0D })
set_hl(0, 'CmpItemKindIdentifier', { fg = colors.base08 })
set_hl(0, 'CmpItemKindField', { fg = colors.base08 })
set_hl(0, 'CmpItemKindVariable', { fg = colors.base0E })
set_hl(0, 'CmpItemKindSnippet', { fg = colors.red })
set_hl(0, 'CmpItemKindText', { fg = colors.base0B })
set_hl(0, 'CmpItemKindStructure', { fg = colors.base0E })
set_hl(0, 'CmpItemKindType', { fg = colors.base0A })
set_hl(0, 'CmpItemKindKeyword', { fg = colors.base07 })
set_hl(0, 'CmpItemKindMethod', { fg = colors.base0D })
set_hl(0, 'CmpItemKindConstructor', { fg = colors.blue })
set_hl(0, 'CmpItemKindFolder', { fg = colors.base07 })
set_hl(0, 'CmpItemKindModule', { fg = colors.base0A })
set_hl(0, 'CmpItemKindProperty', { fg = colors.base08 })
set_hl(0, 'CmpItemKindUnit', { fg = colors.base0E })
set_hl(0, 'CmpItemKindFil', { fg = colors.base07 })
set_hl(0, 'CmpItemKindColo', { fg = colors.red })
set_hl(0, 'CmpItemKindReferenc', { fg = colors.base05 })
set_hl(0, 'CmpItemKindStruc', { fg = colors.base0E })
set_hl(0, 'CmpItemKindOperato', { fg = colors.base05 })
set_hl(0, 'CmpItemKindTypeParamete', { fg = colors.base08 })
