" Plugins
" -------

" Bring in 3rd party plugins
source ~/Dotfiles/vim/plugins.vim
source ~/Dotfiles/vim/lightline.vim
source ~/Dotfiles/vim/ctrlp.vim
source ~/Dotfiles/vim/vim-move.vim




" Basics
" ------

"Enable syntax highlighting
syntax enable

" Set the color scheme
let g:enable_bold_font = 1

" let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

" Set the colorscheme. For hybrid material to work correctly, the previous
" two lines need to run before this colorscheme is set.
colorscheme hybrid_material

" Show the ruler at line 81 because lines longer than 80 characters
" can be a bit obfuscated
set colorcolumn=81

" Show line numbers
set number

" Allow the backspace to work like other editors
set backspace=indent,eol,start

" Change the default leader key
let mapleader = ','

" Enforce UTF8 encoding
set encoding=UTF-8

set guifont=Hack_Nerd_Font:h20





" Tabs and Spaces
" ---------------

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2





" Searching
" ---------

" Highlight Search Results
set hlsearch

" Allow incremental searching
set incsearch





" Mappings
" --------

" Easily edit the vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Shorcut fro quitting a file
nmap <Leader>q :q<cr>

" Shortcut for writing a file
nmap <Leader>w :w<cr>

" Shortcut for writing and quitting a file
nmap <Leader>wq :wq<cr>

" Disable the highlighting of search results
nmap <Leader><space> :nohlsearch<cr>

" Shortcut for showing the NERD Tree
nmap <Leader>e :NERDTreeToggle<cr>

" Shortcut for CtrlP
nmap <C-p> :CtrlP<cr>

" Shortcut for MRU
nmap <Leader>f :MRU<cr>





" Auto Commands
" -------------

augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

