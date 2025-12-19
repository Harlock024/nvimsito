require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    custom = {"node_modules", ".git",".env"},
  },
  git = {
    enable = true,
    ignore= false,
  },
})

