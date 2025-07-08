local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Linters
    null_ls.builtins.diagnostics.eslint,         -- para JS/TS con eslint
    null_ls.builtins.diagnostics.flake8,          -- para Python con flake8
    null_ls.builtins.diagnostics.ziglint,         -- para Zig si tienes un linter compatible

    -- Formateadores
    null_ls.builtins.formatting.prettier,         -- JS/TS
    null_ls.builtins.formatting.black,            -- Python
    null_ls.builtins.formatting.zigfmt,           -- Zig
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = 0, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = 0,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

