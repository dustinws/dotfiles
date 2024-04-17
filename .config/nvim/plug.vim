call plug#begin('~/.vim/plugged')

Plug 'xiyaowong/transparent.nvim'
Plug 'smoka7/hop.nvim'
Plug 'rose-pine/neovim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fladson/vim-kitty'
Plug 'terrortylor/nvim-comment'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-sensible'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'yegappan/mru'
Plug 'matze/vim-move'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Finish loading plugins.
call plug#end()
