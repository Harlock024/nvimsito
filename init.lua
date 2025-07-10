require("plugins")
require("cmp-config")
require("autopairs-config")
require("terminal");
require("tree")

require("keymaps")

require('lsp').setup()


vim.diagnostic.config({
  virtual_text = true,   
  signs = true,          
  underline = true,      
  update_in_insert = true, 
  severity_sort = true,
})

vim.cmd([[colorscheme lackluster-hack]])
vim.opt.clipboard:append("unnamedplus")


vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.fillchars = {eob = " "}



