" Add this folder to the runtime
set rtp+=~/Dotfiles/vim





" Plugins
" -------

" Bring in 3rd party plugins
source ~/Dotfiles/vim/plugins.vim
source ~/Dotfiles/vim/lightline.vim
source ~/Dotfiles/vim/ctrlp.vim
source ~/Dotfiles/vim/vim-move.vim
source ~/Dotfiles/vim/disable-arrows.vim

set termguicolors


" Basics
" ------

" Disable code folding
set nofoldenable

"Enable syntax highlighting
syntax enable

" Disable code wrapping
set nowrap

" Allow completion to use any open or loaded buffers
set complete=.,w,b,u


" Set the color scheme
let g:enable_bold_font = 1

" Allow the color scheme to defer the background to the terminal
let g:hybrid_transparent_background = 1

" Set the colorscheme. For hybrid material to work correctly, the previous
" two lines need to run before this colorscheme is set.
" colorscheme hybrid_material
colorscheme hybrid_reverse 

" Set hybrid line numbers
set number
set relativenumber

" Change the color of the line numbers
highlight LineNr guifg=#ab5aad

" Change vim's default italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Allow comments to be italic
highlight Comment cterm=italic

" Show the ruler at line 81 because lines longer than 80 characters
" can be a bit obfuscated
set colorcolumn=81

" Allow the backspace to work like other editors
set backspace=indent,eol,start

" Change the default leader key
let mapleader = ','

" Enforce UTF8 encoding
set encoding=UTF-8

" By default vim puts new panes on top or to the left
set splitright
set splitbelow




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

" Remap the escape key
imap jj <Esc>

" Go down five lines when scrolling with ctrl e
" This helps to speed up smooth scrolling
nnoremap <C-e> 5<C-e>

" Do the same for Ctrl Y scrolling
nnoremap <C-y> 5<C-y>

" Shortcut to open a terminal on the fly
nmap <Leader>t :term<cr>





" Off Hand Plugin Stuff
" ---------------------

" Tell COC to load the typescript server
let g:coc_global_extensions = [ 'coc-tsserver' ]

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)





" Auto Commands
" -------------

augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END
