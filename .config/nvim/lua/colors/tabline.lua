local set_hl = vim.api.nvim_set_hl
local colors = require 'colors.colors'.colors

set_hl(0, 'TblineFill', { bg = colors.black2 })
set_hl(0, 'TbLineBufOn', { fg = colors.white, bg = colors.black })
set_hl(0, 'TbLineBufOff', { fg = colors.light_grey, bg = colors.black2 })
set_hl(0, 'TbLineBufOnModified', { fg = colors.green, bg = colors.black })
set_hl(0, 'TbBufLineBufOffModified', { fg = colors.red, bg = colors.black2 })
set_hl(0, 'TbLineBufOnClose', { fg = colors.red, bg = colors.black })
set_hl(0, 'TbLineBufOffClose', { fg = colors.light_grey, bg = colors.black2 })
set_hl(0, 'TblineTabNewBtn', { fg = colors.white, bg = colors.one_bg3, bold = true })
set_hl(0, 'TbLineTabOn', { fg = colors.black, bg = colors.nord_blue, bold = true })
set_hl(0, 'TbLineTabOff', { fg = colors.white, bg = colors.one_bg2 })
set_hl(0, 'TbLineTabCloseBtn', { fg = colors.black, bg = colors.nord_blue })
set_hl(0, 'TBTabTitle', { fg = colors.black, bg = colors.white })
set_hl(0, 'TbLinebase16ToggleBtn', { bold = true, fg = colors.white, bg = colors.one_bg3 })
set_hl(0, 'TbLineCloseAllBufsBtn', { bold = true, bg = colors.red, fg = colors.black })