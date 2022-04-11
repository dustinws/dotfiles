call plug#begin('~/.vim/plugged')

Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'liuchengxu/vim-clap'
Plug 'glepnir/dashboard-nvim'
Plug 'tpope/vim-sensible'
Plug 'projekt0n/github-nvim-theme'
Plug 'lewis6991/gitsigns.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'neovimhaskell/haskell-vim'
Plug 'kien/ctrlp.vim'
Plug 'yegappan/mru'
Plug 'ElmCast/elm-vim'
Plug 'matze/vim-move'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc-pairs'
Plug 'neoclide/coc-tsserver'
Plug 'neoclide/coc-eslint'
Plug 'fannheyward/coc-styled-components'
Plug 'MaxMEllon/vim-jsx-pretty'


call plug#end()



let g:mapleader = ','                     " Set the leader key

set t_Co=256
syntax on
filetype plugin indent on
set hidden		                  " Required to keep multiple buffers open
colorscheme onehalfdark                   " Set the color scheme
hi Normal guibg=None ctermbg=None         " Transparent BG for vim
hi NvimTreeNormal guibg=None ctermbg=None " Transparent BG for Nvim Tree
highlight clear LineNr			  " Transparent BG for line numbers
set termguicolors
set number                                " Show line numbers
set relativenumber                        " Show relative line numbers
set ruler                                 " Show the cursor position at all times
set mouse=a			          " Allow the mouse to work
set shiftwidth=2                          " Use two spaces for indentation
set smarttab                              " Allow dynamic tabs based on the file
set autoindent			          " Allow nvim to automatically indent code
set laststatus=0                          " Always display the status line
set nofoldenable                          " Disabled code folding
set nowrap                                " Do not wrap lines


" Mappings
" --------

" Stay in insert mode when inserting lines
nnoremap o o<Esc>                         
nnoremap O O<Esc>

" Shorcut fro quitting a file
nmap <Leader>q :q<cr>

" Shortcut for writing and quitting a file
" Shortcut for writing a file
nmap <Leader>w :w<cr>

nmap <Leader>wq :wq<cr>
nmap <Leader>f :MRU<cr>

" Shortcut for MRU
" Remap the escape key
imap jj <Esc>


" Plugin Stuff
" ------------

" Tell Ctrl P to ignore everything in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Shortcut for showing the NERD Tree
nmap <Leader>e :NvimTreeToggle<cr>

" Disable the highlighting of search results
nmap <Leader><space> :nohlsearch<cr>

" Shortcut for CtrlP
nmap <C-p> :CtrlP<cr>

" Change the vim move modifier to the control key
let g:move_key_modifier = 'C'

nnoremap <leader>ff <cmd>Telescope find_files<cr>

nnoremap <silent>gt :BufferLineCycleNext<CR>
nnoremap <silent>gT :BufferLineCyclePrev<CR>


" Elm Language Server
lua << EOF
require'nvim-tree'.setup()
require('lspconfig').elmls.setup{}
require'lualine'.setup {
  options = {
    component_separators = {'', ''},
    section_separators = {'', ''},
    theme = 'nord'
  }
}
require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})
require("bufferline").setup{}
require('gitsigns').setup()
EOF

nmap <Leader>g :Goyo<cr>


