-- my key maps

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end



-- nvim tree
map("n","<leader>e",":NvimTreeToggle<CR>", "Toggle tree nvim")
map("n","<leader>f",":NvimTreeFocus<CR>", "Focus tree nvim")

-- buffer nav
map("n","<Tab>",":bnext<CR>","next buffer")
map("n","<Tab>",":bprev<CR>","prev buffer")
map("n", "<leader>bd", ":bdelete<CR>", "close actual buffer")

-- Telescope
map("n", "<leader>ff" , ":Telescope find_files<CR>","search files")
map("n", "<leader>fg" , ":Telescope live_grep<CR>","search text")
