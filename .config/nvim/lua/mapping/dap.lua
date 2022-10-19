local status, dap = pcall(require, 'dap')
if not status then
  return {}
end

local dapui = require 'dapui'

return {
  { '<F6>', dap.step_over },
  { '<F7>', dap.step_into },
  { '<F8>', dap.step_out },

  { '<Leader>di', dapui.toggle },
  { '<Leader>dt', dap.toggle_breakpoint },

  { '<Leader>dc', dap.continue },

  {
    '<Leader>duf',
    function()
      local widgets = require 'dap.ui.widgets'
      widgets.centered_float(widgets.scopes)
    end,
  },

  { '<Leader>dro', dap.repl.open },
}
