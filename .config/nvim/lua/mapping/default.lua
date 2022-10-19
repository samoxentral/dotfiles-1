return {
  { '<ESC>', ':noh <cr>' },
  { '<C-s>', ':w <cr>' },

  -- Disable arrows
  { '<up>', '', '' },
  { '<down>', '', '' },
  { '<left>', '', '' },
  { '<right>', '', '' },

  -- navigation
  { '<C-b>', '<ESC>^i', 'i' },
  { '<C-e>', '<End>', 'i' },

  { '<C-h>', '<C-w>h', 'i' },
  { '<C-k>', '<C-w>k', 'i' },
  { '<C-j>', '<C-w>j', 'i' },
  { '<C-l>', '<C-w>l', 'i' },

  { '<C-h>', '<C-w>h' },
  { '<C-k>', '<C-w>k' },
  { '<C-j>', '<C-w>j' },
  { '<C-l>', '<C-w>l' },

  -- buffers
  { '<S-b>', ':enew<cr>' },
  { '<Tab>', ':Tbufnext <cr>' },
  { '<S-Tab>', ':Tbufprev <cr>' },

  { 'tn', ':tabedit <cr>' },
  {
    '<leader>x',
    function()
      require('user.tab-utils').close_buffer()
    end,
  },

  { '<Leader>gb', require('user.git.blame').blame },
}
