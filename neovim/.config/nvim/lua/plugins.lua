require'nvim-autopairs'.setup{}

return require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'neovim/nvim-lspconfig'
end)

