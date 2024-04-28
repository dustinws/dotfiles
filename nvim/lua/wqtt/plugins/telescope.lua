return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Show all files in git" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Show recent files" })
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "show all files in the current directory" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "show all open buffers" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "find todos" })
		vim.keymap.set(
			"n",
			"<leader>fs",
			"<cmd>Telescope lsp_document_symbols query=searchTerm<CR>",
			{ desc = "Search the document for symbols" }
		)
		vim.keymap.set(
			"n",
			"<leader>fws",
			"<cmd>Telescope lsp_workspace_symbols query=searchTerm<CR>",
			{ desc = "Search the workspace for symbols" }
		)
	end,
}
