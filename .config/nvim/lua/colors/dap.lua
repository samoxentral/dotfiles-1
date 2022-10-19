local colors = require 'colors.colors'

local function lspSymbol(name, link, icon)
  vim.fn.sign_define(name, { text = icon, texthl = link, linehl = link, numhl = link })
end

lspSymbol('DapBreakpoint', 'DapBreakpoint', '')
lspSymbol('DapBreakpointCondition', 'DapBreakpoint', 'ﳁ')
lspSymbol('DapBreakpointRejected', 'DapBreakpoint', '')
lspSymbol('DapLogPoint', 'DapLogPoint', '')
lspSymbol('DapStopped', 'DapStopped', '')

return {
  { 'DapBreakpoint', { fg = colors.base08, bg = colors.base02 } },
  { 'DapLogPoint', { fg = colors.base0D, bg = colors.base02 } },
  { 'DapStopped', { fg = colors.base0B, bg = colors.base02 } },
}
