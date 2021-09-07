local map = vim.api.nvim_set_keymap

map('!', 'kj', '<Esc>', { noremap = true })
map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true})
-- require 'nvim-tree'.toggle()
