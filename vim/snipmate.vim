let g:snipMate = {}

" Use the old snipmate parser
let g:snipMate.snippet_version = 0

" Create some aliases so a file type can borrow another file types snips
let g:snipMate.scope_aliases = {}

" Allow regular javascript snippets to be used in typescript
let g:snipMate.scope_aliases['typescript'] = 'javascript,typescript'
