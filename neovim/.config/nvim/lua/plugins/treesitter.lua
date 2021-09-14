require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'lua',
    'html',
    'css',
    'javascript',
    'bash'
  },
  highlight = { enable = true },
  indent= { enable = true },
  autotag = { enable = true }
}
