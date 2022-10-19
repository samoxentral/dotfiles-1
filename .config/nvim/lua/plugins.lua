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
  use 'rmagatti/auto-session'
  use 'karb94/neoscroll.nvim'
  use 'mtdl9/vim-log-highlighting'

  use { 'kyazdani42/nvim-tree.lua', requires = {
    'kyazdani42/nvim-web-devicons',
  } }

  use { 'nvim-treesitter/nvim-treesitter', requires = {
    'nvim-treesitter/playground',
  } }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-dap.nvim',
    },
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'RRethy/vim-illuminate',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
  }

  use 'jose-elias-alvarez/null-ls.nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
  }

  use { 'mfussenegger/nvim-dap', requires = {
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
  } }
end)
