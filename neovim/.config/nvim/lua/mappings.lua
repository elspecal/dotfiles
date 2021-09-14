-- local map = vim.api.nvim_set_keymap
local map = function (key)
  local opts = { noremap = true }

  for k, v in pairs(key) do
    if 'string' == type(k) then opts[k] = v end
  end

  vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
end

map{ '!', 'kj', '<Esc>' }
map { 'n', '<C-n>', ':NvimTreeToggle<CR>' }
map { 'n', '<leader>ff', ':Telescope find_files<CR>' }
map { 'n', '<leader>fg', ':Telescope live_grep<CR>' }
map { 'n', '<leader>fb', ':Telescope buffers<CR>' }
map { 'n', '<leader>fh', ':Telescope help_tags<CR>' }
map { 'n', '<leader>t', ':tabnew<CR>' }
map { 'n', '<leader>ec', ':e $MYVIMRC<CR>' }
map { 'n', '<leader>sc', ':source $MYVIMRC<CR>' }
map { 'n', '<leader>w', ':w<CR>' }
map { 'n', '<leader>q', ':q<CR>' }
map { 'n', '<leader>wq', ':wq<CR>' }
