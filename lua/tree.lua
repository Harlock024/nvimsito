require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
    relativenumber = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
  },
})

