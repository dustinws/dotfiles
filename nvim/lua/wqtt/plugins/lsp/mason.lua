return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup()

		mason_lspconfig.setup({
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"graphql",
				"prismals",
				"pyright",
				"elmls",
				"golangci_lint_ls",
				"gopls",
				"eslint",
				"yamlls",
				"terraformls",
				"rust_analyzer",
				"marksman",
				"elixirls",
				"docker_compose_language_service",
				"cypher_ls",
				"clangd",
				"bashls",
			},
		})

		local mason_tool_installer = require("mason-tool-installer")

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"elm-format",
				"eslint",
			},
		})
	end,
}
