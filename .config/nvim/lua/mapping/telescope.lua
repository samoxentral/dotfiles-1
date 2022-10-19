local status, builtin = pcall(require, 'telescope.builtin')

if not status then
  return {}
end

local dap = require('telescope').extensions.dap
local execute = require 'user.finder'

return {
  {
    '<leader>ff',
    function()
      execute(builtin.find_files)
    end,
  },

  {
    '<leader>fa',
    function()
      builtin.find_files { follow = true, no_ignore = true, hidden = true }
    end,
  },

  {
    '<leader>fw',
    function()
      execute(builtin.live_grep)
    end,
  },

  { '<leader>fb', builtin.buffers },
  { '<leader>fh', builtin.help_tags },
  { '<leader>fo', builtin.oldfiles },
  { '<leader>tk', builtin.keymaps },

  { '<leader>cm', builtin.git_commits },
  { '<leader>gt', builtin.git_status },

  { '<leader>dd', dap.list_breakpoints },
}
