-- plugins.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'slugbyte/lackluster.nvim'
  use 'nvim-tree/nvim-web-devicons'              
  use {
    'nvim-lualine/lualine.nvim',                
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',                   
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use {
    'nvim-telescope/telescope.nvim',            
    tag = '0.1.4',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'neovim/nvim-lspconfig'                   
  use 'williamboman/mason.nvim'                 
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-cmp'                         
  use 'hrsh7th/cmp-nvim-lsp'                    
  use 'hrsh7th/cmp-buffer'                      
  use 'hrsh7th/cmp-path'                       
  use 'hrsh7th/cmp-cmdline'                   

  use 'L3MON4D3/LuaSnip'                     
  use 'saadparwaiz1/cmp_luasnip'            

  use {
    'nvim-treesitter/nvim-treesitter',           
    run = ':TSUpdate'
  }
  use 'HiPhish/rainbow-delimiters.nvim'         

  use 'tpope/vim-sensible'                     
  use 'tpope/vim-surround'                    
  use 'tpope/vim-commentary'                 
  use 'tpope/vim-repeat'                    
  use 'windwp/nvim-autopairs'              

  use 'lukas-reineke/indent-blankline.nvim'      

  use 'tpope/vim-fugitive'                      
  use 'lewis6991/gitsigns.nvim'                
  use { "akinsho/toggleterm.nvim", tag = '*' } 
  use 'folke/todo-comments.nvim'

  use {
	"jose-elias-alvarez/null-ls.nvim",
  	requires = { "nvim-lua/plenary.nvim" }
}	

end)

