vim.keymap.set('n', '<Leader>gb', require('user.git.blame').blame, {
  noremap = true,
  silent = true,
  expr = false,
})
