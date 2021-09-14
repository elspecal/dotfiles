local lspconfig = require 'lspconfig'
local coq = require 'coq'

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- JavaScript
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities {
  filetypes = {
    'javascript', 'javascriptreact', 'javascript.jsx', 'typescript',
    'typescriptreact', 'typescript.tsx', 'astro'
  }
})

-- HTML
lspconfig.html.setup(coq.lsp_ensure_capabilities { capabilities = capabilities })

-- CSS
lspconfig.cssls.setup(coq.lsp_ensure_capabilities { capabilities = capabilities })

-- Lua
USER = vim.fn.expand '$USER'

local system_name = 'Linux'
local sumneko_root_path = '/home/' .. USER .. '/.local/share/lua-language-server'
local sumneko_binary = sumneko_root_path.. '/bin/' .. system_name .. '/lua-language-server'
local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

lspconfig.sumneko_lua.setup(coq.lsp_ensure_capabilities {
  cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' };
  settings = {
    Lua = {
      runtime = {
	version = 'LuaJIT',
	path = runtime_path,
      },
      diagnostics = { globals = 'vim' },
      workspace = { library = vim.api.nvim_get_runtime_file('', true) },
      telemetry = { enable = false }
    }
  }
})
