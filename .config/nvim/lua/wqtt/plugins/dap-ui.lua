return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()

		vim.keymap.set("n", "<leader>dp", dap.toggle_breakpoint, { desc = "Toggle a breakpoint" })

		vim.keymap.set("n", "<leader>db", dapui.toggle, { desc = "Toggle the debugger " })
	end,
}
