local status, packer = pcall(require, 'packer')
if not status then
  return
end

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

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'

  -- other
  use 'goolord/alpha-nvim'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'uga-rosa/ccc.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  -- use 'rmagatti/auto-session'
  use 'karb94/neoscroll.nvim'

  -- tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter' }
  -- use { 'nvim-treesitter/nvim-treesitter', commit = '4cccb6f494eb255b32a290d37c35ca12584c74d0' }
  use 'nvim-treesitter/playground'
  use 'mtdl9/vim-log-highlighting'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-dap.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- snippets
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- lsp completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'

  -- hightlight lsp word
  use 'RRethy/vim-illuminate'

  -- dap
  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'rcarriga/nvim-dap-ui'
end)
