call plug#begin('~/.vim/plugged')



"""" Language Support Plugins """"
" ------------------------------ "

" Language Server Base
Plug 'neovim/nvim-lspconfig'
" Language Server Helpers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Prisma Syntax
Plug 'prisma/vim-prisma'
" Prisma Language Server
Plug 'pantharshit00/coc-prisma'
" Haskell Syntax
Plug 'neovimhaskell/haskell-vim'
" Elm Support
Plug 'ElmCast/elm-vim'
" Better TypeScript Support
Plug 'leafgarland/typescript-vim'
" Better Javascript Support
Plug 'pangloss/vim-javascript'
" Insert Syntactic Pairs
Plug 'neoclide/coc-pairs'
" TypeScript Language Server
Plug 'neoclide/coc-tsserver'
" Eslint Support
Plug 'neoclide/coc-eslint'
" Go Support
Plug 'fatih/vim-go'
" Better JSX Support
Plug 'MaxMEllon/vim-jsx-pretty'


"""" Themes """"
" ------------ "

" Catppuccin
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Github Theme
Plug 'projekt0n/github-nvim-theme'
" Nord Theme
Plug 'arcticicestudio/nord-vim'
" Tokyo Night Theme
Plug 'folke/tokyonight.nvim'


"""" Neovim Feature Plugins """"
" ---------------------------- "

" Dependency for Telescope
Plug 'nvim-lua/plenary.nvim'
" Visual Fuzzy Finder
Plug 'nvim-telescope/telescope.nvim'
" Enable nice defaults to make vim feel more like a regular editor
Plug 'tpope/vim-sensible'
" Show git indicators in the gutter
Plug 'lewis6991/gitsigns.nvim'
" File icon support
Plug 'kyazdani42/nvim-web-devicons'
" Tree explorer
Plug 'kyazdani42/nvim-tree.lua'
" The information line at the bottom
Plug 'hoob3rt/lualine.nvim'
" Most Recently Used Files
Plug 'yegappan/mru'
" Move lines and blocks with key commands
Plug 'matze/vim-move'
" Tmux Support
Plug 'edkolev/tmuxline.vim'


call plug#end()



let g:mapleader = ','                     " Set the leader key

set t_Co=256
syntax on
filetype plugin indent on
set hidden		                  " Required to keep multiple buffers open
colorscheme catppuccin-latte               " Set the color scheme
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

" Shortcut for showing the NERD Tree
nmap <Leader>e :NvimTreeToggle<cr>

" Disable the highlighting of search results
nmap <Leader><space> :nohlsearch<cr>

" Change the vim move modifier to the control key
let g:move_key_modifier = 'C'

nnoremap <leader>ff <cmd>Telescope find_files<cr>


" LUA Plugin Initializations
lua << EOF
require'nvim-tree'.setup()

require('lspconfig').elmls.setup{}

require'lualine'.setup {
  options = {
    component_separators = {'', ''},
    section_separators = {'', ''},
    theme = 'iceberg_light'
  }
}

require('gitsigns').setup()
EOF

