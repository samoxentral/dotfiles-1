local status, comment = pcall(require, 'Comment.api')
if not status then
  return {}
end

return {
  { '<leader>/', comment.toggle.linewise.current },
  { '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", 'v' },
}
