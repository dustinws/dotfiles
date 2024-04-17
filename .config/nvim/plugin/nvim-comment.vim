lua << EOF
require('nvim_comment').setup({
	create_mappings = false,
})
EOF

nmap <Leader>c :CommentToggle<cr>
vmap <Leader>c :'<,'>CommentToggle<cr>
