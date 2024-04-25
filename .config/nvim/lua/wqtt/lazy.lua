local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "wqtt.plugins" },
	{ import = "wqtt.plugins.lsp" },
	{ import = "wqtt.plugins.dap" },
	{ import = "wqtt.plugins.themes" },
}, {
	change_detection = {
		enabled = true,
		notify = true,
	},
})
