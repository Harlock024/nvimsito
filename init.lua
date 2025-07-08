require("plugins")
require("cmp-config")
require("autopairs-config")

require("tree")

require("keymaps")

require('lsp').setup()


vim.diagnostic.config({
  virtual_text = true,   -- muestra el error justo al lado del código
  signs = true,          -- muestra iconos en la columna de la izquierda (sign column)
  underline = true,      -- subraya el texto con error
  update_in_insert = true, -- actualiza diagnósticos mientras estás insertando texto
  severity_sort = true,
})

vim.cmd([[colorscheme lackluster-hack]])
vim.opt.clipboard:append("unnamedplus")




