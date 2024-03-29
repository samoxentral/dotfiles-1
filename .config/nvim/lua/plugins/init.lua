local status, packer = pcall(require, 'packer')
if not status then
  return
end

require('utils.loader').highlight 'packer'

vim.cmd 'packadd packer.nvim'

packer.init {
  auto_clean = true,
  compile_on_sync = true,
  git = { clone_timeout = 6000 },
  display = {
    working_sym = 'ﲊ',
    error_sym = '✗ ',
    done_sym = ' ',
    removed_sym = ' ',
    moved_sym = '',
    open_fn = function()
      return require('packer.util').float { border = 'single' }
    end,
  },
}

packer.startup(require 'plugins.plugins')
