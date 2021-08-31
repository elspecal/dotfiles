local opt = vim.opt

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
opt.background = 'light'
opt.lazyredraw = true
opt.termguicolors = true
