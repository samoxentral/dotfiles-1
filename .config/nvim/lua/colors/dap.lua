local hl = vim.highlight.create
local sg = vim.fn.sign_define
local colors = require 'colors.colors'

hl('DapBreakpoint', { ctermbg = 0, guifg = colors.base08, guibg = colors.base02 }, false)
hl('DapLogPoint', { ctermbg = 0, guifg = colors.base0D, guibg = colors.base02 }, false)
hl('DapStopped', { ctermbg = 0, guifg = colors.base0B, guibg = colors.base02 }, false)

sg('DapBreakpoint', { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
sg(
  'DapBreakpointCondition',
  { text = 'ﳁ', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }
)
sg(
  'DapBreakpointRejected',
  { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }
)
sg('DapLogPoint', { text = '', texthl = 'DapLogPoint', linehl = 'DapLogPoint', numhl = 'DapLogPoint' })
sg('DapStopped', { text = '', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })
