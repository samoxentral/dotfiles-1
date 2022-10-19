local colors = require 'colors.colors'

return {
  { 'TbLineBufOnDefault', { fg = colors.base05, bg = colors.base00, bold = true } },
  { 'TbLineBufOnChanged', { fg = colors.base0C, bg = colors.base00, bold = true } },
  { 'TbLineBufOnIgnored', { fg = colors.base04, bg = colors.base00, bold = true } },
  { 'TbLineBufOffDefault', { fg = colors.base05, bg = colors.base01 } },
  { 'TbLineBufOffChanged', { fg = colors.base0C, bg = colors.base01 } },
  { 'TbLineBufOffIgnored', { fg = colors.base04, bg = colors.base01 } },

  { 'TbLineBufOn', { fg = colors.base05, bg = colors.base00 } },
  { 'TbLineBufOff', { fg = colors.base04, bg = colors.base01 } },

  { 'TblineFill', { bg = colors.base01 } },
  { 'TbLineBufOnModified', { fg = colors.base0B, bg = colors.base00 } },
  { 'TbBufLineBufOffModified', { fg = colors.base0F, bg = colors.base01 } },
  { 'TbLineBufOnClose', { fg = colors.base0F, bg = colors.base00 } },
  { 'TbLineBufOffClose', { fg = colors.base04, bg = colors.base01 } },
  { 'TblineTabNewBtn', { fg = colors.base05, bg = colors.base01, bold = true } },
  { 'TbLineTabOn', { fg = colors.base00, bg = colors.base05, bold = true } },
  { 'TbLineTabOff', { fg = colors.base05, bg = colors.base02 } },
  { 'TbLineTabCloseBtn', { fg = colors.base00, bg = colors.base05 } },
  { 'TBTabTitle', { fg = colors.base00, bg = colors.base05 } },
  { 'TbLinebase16ToggleBtn', { bold = true, fg = colors.base05, bg = colors.base01 } },
  { 'TbLineCloseAllBufsBtn', { bold = true, bg = colors.base0F, fg = colors.base00 } },
}
