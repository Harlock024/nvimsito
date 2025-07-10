local toggleterm = require("toggleterm")

toggleterm.setup({
  size = 12,
  open_mapping = [[<C-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = true,
  persist_size = true,
  direction = "horizontal", -- 'horizontal' | 'vertical' | 'tab' | 'float'
  close_on_exit = true,
  shell = vim.o.shell,
})
