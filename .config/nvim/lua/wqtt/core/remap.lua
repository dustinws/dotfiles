vim.g.mapleader = ","

vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.keymap.set("n", "nh", ":nohl<CR>", { desc = "Clear highlights with nh" })

vim.keymap.set("n", "<leader>wc", ":w<CR>", { desc = "Write the current buffer" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Write all open buffers" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

vim.keymap.set("n", "<leader>ns", ":source ~/.config/nvim/init.lua<CR>", { desc = "Source the nvim configuration" })

vim.keymap.set("n", "<leader>rgm", ":! go run main.go<CR>", { desc = "Run the main.go file" })
