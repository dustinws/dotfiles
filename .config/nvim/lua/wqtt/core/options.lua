-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs & Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- No line wraps
vim.opt.wrap = false

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Higlight the line the cursor is currently on
vim.opt.cursorline = true

-- Tell neovim that our terminal is true color
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Allow backspace to work as you would expect
vim.opt.backspace = "indent,eol,start"

-- Use system clipboard as default register
vim.opt.clipboard:append("unnamedplus")
