local opt = vim.opt local cmd = vim.cmd

-- disble some built-in plugins
local disabled_built_ins = {
  'gzip',
  'man',
  'matchit',
  'matchparen',
  'netrwPlugin',
  'shada',
  'tarPlugin',
  'zipPlugin'
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g['loaded_' .. plugin] = 1
end

opt.rnu = true
opt.nu = true
opt.scrolloff = 8
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.wrap = false
opt.sidescroll = 5
-- cannot append to the listchars variable for some reason
-- opt.listchars = opt.listchars + 'precedes:<,extends:>'
opt.listchars = 'tab:> ,trail:-,nbsp:+,precedes:<,extends:>'
opt.iskeyword:append '-'
opt.cursorline = true
opt.showmode = false
opt.lazyredraw = true
opt.autochdir = true
opt.background = 'dark'
opt.termguicolors = true

-- nvim-tree
----------------
cmd 'let g:nvim_tree_side = "right"'
cmd 'let g:nvim_tree_auto_close = 1'
-- cmd 'let g:nvim_tree_icon_padding = "   "'
cmd 'let g:nvim_tree_follow = 1'
cmd 'let g:nvim_tree_follow_update_path = 1'

-- coq
----------------
cmd 'let g:coq_settings = { "auto_start": v:true }'
