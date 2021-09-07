return require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- use {
  --   'windwp/nvim-autopairs',
  --   config = function() require'nvim-autopairs'.setup{} end
  -- }
  use {
    'steelsojka/pears.nvim',
    config = function() 
      require'pears'.setup(function(conf)
	conf.preset'tag_matching'
      end)
    end
  }
  use 'neovim/nvim-lspconfig'
  use 'shaunsingh/nord.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
end)

