require("plugins")
require("cmp-config")
require("autopairs-config")

require('lsp').setup()

vim.cmd([[colorscheme lackluster-hack]])
vim.opt.clipboard:append("unnamedplus")
