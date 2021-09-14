_G.MUtils = {}

local map = vim.api.nvim_set_keymap
local ok, autopairs = pcall(require, 'nvim-autopairs')

if not ok then return end

autopairs.setup { map_bs = false }

MUtils.CR = function ()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
      return autopairs.esc('<C-y>')
    else
      return autopairs.esc('<C-e>') .. autopairs.autopairs_cr()
    end
  else
    return autopairs.autopairs_cr()
  end
end

MUtils.BS = function ()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
    return autopairs.esc('<C-e>') .. autopairs.autopairs_bs()
  else
    return autopairs.autopairs_bs()
  end
end

map('i', '<CR>', 'v:lua.MUtils.CR()', { expr = true, noremap = true })
map('i', '<BS>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })

