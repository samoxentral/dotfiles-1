local colors = require 'colors.colors'

local function createSymbol(name, link, icon)
  vim.fn.sign_define(name, { text = icon, texthl = link, linehl = link, numhl = link })
end

createSymbol('DapBreakpoint', 'DapBreakpoint', '')
createSymbol('DapBreakpointCondition', 'DapBreakpoint', 'ﳁ')
createSymbol('DapBreakpointRejected', 'DapBreakpoint', '')
createSymbol('DapLogPoint', 'DapLogPoint', '')
createSymbol('DapStopped', 'DapStopped', '')

return {
  { 'DapBreakpoint', { fg = colors.base08, bg = colors.base02 } },
  { 'DapLogPoint', { fg = colors.base0D, bg = colors.base02 } },
  { 'DapStopped', { fg = colors.base0B, bg = colors.base02 } },
}
