local M = {}

function M.setup()
  local lspconfig = require("lspconfig")
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  
  local on_attach = function(client, bufnr)
    print(client.name .. " conectado!")
  end

  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = {"vtsls", "clangd", "rust_analyzer", "zls", "gopls" },
    
    handlers = {
      function(server_name)  
        lspconfig[server_name].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end,
    },
  })
end

return M
