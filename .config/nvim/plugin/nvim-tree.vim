lua << EOF
require'nvim-tree'.setup({
	view = { side = "right" },
	filters = {
		dotfiles = false,
		custom = { '^.git$' },
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	},
})
EOF

nmap <Leader>e :NvimTreeToggle<cr>
