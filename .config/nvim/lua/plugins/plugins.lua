return function(use)
  use 'wbthomason/packer.nvim'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'plugins.config.gitsigns'
    end,
  }
  use {
    'sindrets/diffview.nvim',
    config = function()
      require('utils.loader').mapping 'diffview'
    end,
  }

  -- other
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'plugins.config.alpha'
    end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end,
  }

  use 'tpope/vim-surround'
  use {
    'uga-rosa/ccc.nvim',
    config = function()
      require 'plugins..config.ccc'
    end,
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('utils.loader').highlight 'indentline'
    end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require 'plugins.config.comment'
    end,
  }

  use {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {}
    end,
  }

  use 'mtdl9/vim-log-highlighting'

  use {
    'karb94/neoscroll.nvim',
    config = function()
      require 'plugins.config.neocsroll'
    end,
  }

  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require 'plugins.config.devicons'
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require 'plugins.config.nvimtree'
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'nvim-treesitter/playground',
    },
    config = function()
      require 'plugins.config.treesitter'
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-dap.nvim',
    },
    config = function()
      require 'plugins.config.telescope'
    end,
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'RRethy/vim-illuminate',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require 'plugins.config.illuminate'
      require 'lsp.mason'
      require 'lsp.lspconfig'
    end,
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require 'lsp.null-ls'
    end,
  }

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
    config = function()
      require 'plugins.config.cmp'
      require 'plugins.config.luasnip'
    end,
  }

  use {
    'mfussenegger/nvim-dap',
    requires = {
      'theHamsta/nvim-dap-virtual-text',
      'rcarriga/nvim-dap-ui',
    },
    config = function()
      require 'debug.init'
    end,
  }
end
