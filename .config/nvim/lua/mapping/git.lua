vim.api.nvim_set_keymap('n', '<Leader>gb', "<CMD>lua require('git.blame').blame()<CR>", {
  noremap = true,
  silent = true,
  expr = false,
})
