-- ~/.config/nvim/lua/lsp.lua
local M = {}

function M.setup()
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "clangd", "rust_analyzer","zig" },
    automatic_installation = true,
  })

  local lspconfig = require("lspconfig")
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  local on_attach = function(client, bufnr)
    print(client.name .. " conectado!")
  end

  local servers = { "pyright", "ts_ls", "clangd", "rust_analyzer", "zls" }
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

return M

