-- ~/.config/nvim/lua/lsp.lua
local M = {}

function M.setup()
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local on_attach = function(client, bufnr)
    print(client.name .. " conectado!")
  end

  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "ts_ls","vtsls", "clangd", "rust_analyzer", "zls", "gopls" },
    
    handlers = {
      function(server_name)  
	vim.lsp.config[server_name].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end,
    },
  })
end

return M
