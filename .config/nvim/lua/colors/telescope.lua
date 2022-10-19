local colors = require 'colors.colors'

return {
  { 'TelescopeBorder', { fg = colors.base00_X, bg = colors.base00_X } },
  { 'TelescopePromptBorder', { fg = colors.base01, bg = colors.base01 } },
  { 'TelescopePromptNormal', { fg = colors.base05, bg = colors.base01 } },
  { 'TelescopePromptPrefix', { fg = colors.base08, bg = colors.base01 } },
  { 'TelescopeNormal', { bg = colors.base00_X } },
  { 'TelescopePreviewTitle', { fg = colors.base00, bg = colors.base0B } },
  { 'TelescopePromptTitle', { fg = colors.base00, bg = colors.base08 } },
  { 'TelescopeResultsTitle', { fg = colors.base00_X, bg = colors.base00_X } },
  { 'TelescopeSelection', { bg = colors.base02, fg = colors.base05 } },
  { 'TelescopeResultsDiffAdd', { fg = colors.base0B } },
  { 'TelescopeResultsDiffChange', { fg = colors.base0A } },
  { 'TelescopeResultsDiffDelete', { fg = colors.base08 } },
}
