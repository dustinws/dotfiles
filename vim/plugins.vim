" Use the latest vim versions
set nocompatible

" Turn off the filetype during plugin initialization
filetype off

" Set the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Initiate vundle
call vundle#begin()

" Register Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'preservim/nerdtree'
Plugin 'yegappan/mru'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'itchyny/lightline.vim'
Plugin 'kristijanhusak/vim-hybrid-material'

" Required to end plugin management
call vundle#end()

" Turn then filetype back on
filetype plugin indent on

