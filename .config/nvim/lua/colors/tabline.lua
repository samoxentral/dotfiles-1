local set_hl = vim.api.nvim_set_hl
local base16 = require('colors.colors').base16
local colors = require('colors.colors').colors

set_hl(0, 'TbLineBufOnDefault', { fg = base16.base05, bg = base16.base00, bold = true })
set_hl(0, 'TbLineBufOnChanged', { fg = base16.base0C, bg = base16.base00, bold = true })
set_hl(0, 'TbLineBufOnIgnored', { fg = base16.base04, bg = base16.base00, bold = true })
set_hl(0, 'TbLineBufOffDefault', { fg = base16.base05, bg = colors.black2 })
set_hl(0, 'TbLineBufOffChanged', { fg = base16.base0C, bg = colors.black2 })
set_hl(0, 'TbLineBufOffIgnored', { fg = base16.base04, bg = colors.black2 })

set_hl(0, 'TbLineBufOn', { fg = base16.base05, bg = base16.base00 })
set_hl(0, 'TbLineBufOff', { fg = colors.light_grey, bg = colors.black2 })

set_hl(0, 'TblineFill', { bg = colors.black2 })
set_hl(0, 'TbLineBufOnModified', { fg = base16.base0B, bg = base16.base00 })
set_hl(0, 'TbBufLineBufOffModified', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'TbLineBufOnClose', { fg = colors.red, bg = base16.base00 })
set_hl(0, 'TbLineBufOffClose', { fg = colors.light_grey, bg = colors.black2 })
set_hl(0, 'TblineTabNewBtn', { fg = base16.base05, bg = colors.one_bg3, bold = true })
set_hl(0, 'TbLineTabOn', { fg = base16.base00, bg = colors.nord_blue, bold = true })
set_hl(0, 'TbLineTabOff', { fg = base16.base05, bg = colors.one_bg2 })
set_hl(0, 'TbLineTabCloseBtn', { fg = base16.base00, bg = colors.nord_blue })
set_hl(0, 'TBTabTitle', { fg = base16.base00, bg = base16.base05 })
set_hl(0, 'TbLinebase16ToggleBtn', { bold = true, fg = base16.base05, bg = colors.one_bg3 })
set_hl(0, 'TbLineCloseAllBufsBtn', { bold = true, bg = colors.red, fg = base16.base00 })
