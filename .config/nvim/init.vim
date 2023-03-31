call plug#begin('~/.vim/plugged')



"""" Language Support Plugins """"
" ------------------------------ "

" Language Server Base
Plug 'neovim/nvim-lspconfig'
" Conquer of Completion Snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Python Completion
Plug 'fannheyward/coc-pyright'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
" Prisma Syntax
Plug 'prisma/vim-prisma'
" Prisma Language Server
Plug 'pantharshit00/coc-prisma'
" Haskell Syntax
Plug 'neovimhaskell/haskell-vim'
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
" Add snippet support
Plug 'neoclide/coc-snippets'
" LSP Icons
Plug 'onsails/lspkind.nvim'



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
" One Dark Theme
Plug 'navarasu/onedark.nvim'


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
colorscheme catppuccin-latte                       " Set the color scheme
" hi Normal guibg=None ctermbg=None         " Transparent BG for vim
" hi NvimTreeNormal guibg=None ctermbg=None " Transparent BG for Nvim Tree
" highlight clear LineNr			  " Transparent BG for line numbers
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
" Highlight the current line
set cursorline
" Set a ruler after 80 characters
set colorcolumn=81


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


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Keybindings
"
nmap <leader>r <Plug>(coc-rename)
nmap <silent> <leader>s <Plug>(coc-fix-current)
nmap <silent> <leader>S <Plug>(coc-codeaction)
nmap <silent> <leader>a <Plug>(coc-diagnostic-next)
nmap <silent> <leader>A <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>g :call CocAction('doHover')<CR>
nmap <silent> <leader>u <Plug>(coc-references)
nmap <silent> <leader>p :call CocActionAsync('format')<CR>



" LUA Plugin Initializations
" require('lspconfig').elmls.setup{}
lua << EOF
require'nvim-tree'.setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ps', function()
	builtin.live_grep()
end)

require'lualine'.setup {
  options = {
    component_separators = {'', ''},
    section_separators = {'', ''},
    theme = 'palenight'
  }
}

require('gitsigns').setup()

require('lspkind').init({
  -- defines how annotations are shown
  -- default: symbol
  -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
  mode = 'symbol_text',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',
})
EOF

