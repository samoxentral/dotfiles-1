local hl = vim.api.nvim_set_hl
local sg = vim.fn.sign_define
local colors = require 'colors.colors'

hl(0, 'DapBreakpoint', { fg = colors.base08, bg = colors.base02 })
hl(0, 'DapLogPoint', { fg = colors.base0D, bg = colors.base02 })
hl(0, 'DapStopped', { fg = colors.base0B, bg = colors.base02 })

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
