local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'

set_hl(0, 'TbLineBufOnDefault', { fg = colors.base05, bg = colors.base00, bold = true })
set_hl(0, 'TbLineBufOnChanged', { fg = colors.base0C, bg = colors.base00, bold = true })
set_hl(0, 'TbLineBufOnIgnored', { fg = colors.base04, bg = colors.base00, bold = true })
set_hl(0, 'TbLineBufOffDefault', { fg = colors.base05, bg = colors.black2 })
set_hl(0, 'TbLineBufOffChanged', { fg = colors.base0C, bg = colors.black2 })
set_hl(0, 'TbLineBufOffIgnored', { fg = colors.base04, bg = colors.black2 })

set_hl(0, 'TbLineBufOn', { fg = colors.base05, bg = colors.base00 })
set_hl(0, 'TbLineBufOff', { fg = colors.base04, bg = colors.black2 })

set_hl(0, 'TblineFill', { bg = colors.black2 })
set_hl(0, 'TbLineBufOnModified', { fg = colors.base0B, bg = colors.base00 })
set_hl(0, 'TbBufLineBufOffModified', { fg = colors.base0F, bg = colors.black2 })
set_hl(0, 'TbLineBufOnClose', { fg = colors.base0F, bg = colors.base00 })
set_hl(0, 'TbLineBufOffClose', { fg = colors.base04, bg = colors.black2 })
set_hl(0, 'TblineTabNewBtn', { fg = colors.base05, bg = colors.base01, bold = true })
set_hl(0, 'TbLineTabOn', { fg = colors.base00, bg = colors.base05, bold = true })
set_hl(0, 'TbLineTabOff', { fg = colors.base05, bg = colors.base02 })
set_hl(0, 'TbLineTabCloseBtn', { fg = colors.base00, bg = colors.base05 })
set_hl(0, 'TBTabTitle', { fg = colors.base00, bg = colors.base05 })
set_hl(0, 'TbLinebase16ToggleBtn', { bold = true, fg = colors.base05, bg = colors.base01 })
set_hl(0, 'TbLineCloseAllBufsBtn', { bold = true, bg = colors.base0F, fg = colors.base00 })
