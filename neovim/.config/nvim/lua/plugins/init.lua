vim.cmd 'packadd packer.nvim'

return require 'packer'.startup(function(use)
  use {
    'wbthomason/packer.nvim',
    event = 'VimEnter'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    config = function() require 'plugins.treesitter' end,
    run = ':TSUpdate'
  }

  use {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    after = 'nord.nvim'
  }

  use {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts',
    after = 'coq_nvim',
  }

  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function() require 'plugins.autopairs' end
  }

  use {
    'neovim/nvim-lspconfig',
    after = 'coq.artifacts',
    config = function() require 'plugins.lspconfig' end
  }

  use {
    'shaunsingh/nord.nvim',
    after = 'packer.nvim',
    config = function() require 'plugins.nord' end
  }

  use {
    'kyazdani42/nvim-web-devicons',
    after = 'nord.nvim'
  }

  use {
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
  }

  use {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    requires = 'nvim-lua/plenary.nvim'
  }

  use {
    'mattn/emmet-vim',
    event = 'InsertEnter',
  }

  use {
    'hoob3rt/lualine.nvim',
    after = 'nvim-web-devicons',
    config = function()
      require 'lualine'.setup { options = { theme = 'nord' } }
    end
  }

  use {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
  }

  use {
    'ellisonleao/glow.nvim',
    config = function () vim.g.glow_binary_path = '/usr/bin/' end,
    cmd = 'Glow'
  }

end)
