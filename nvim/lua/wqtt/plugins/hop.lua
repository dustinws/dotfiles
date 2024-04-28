return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		require("hop").setup()

		vim.keymap.set("n", "<leader>gw", "<cmd>HopWord<CR>", { desc = "Activate word jumping" })
	end,
}
