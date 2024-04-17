nnoremap <C-p> :Telescope find_files<cr>
nnoremap <leader>g :Telescope live_grep<cr>

lua << EOF
local M = {}

M.map = function(ss, opts)

  return {
    TelescopeMatching = { fg = ss.diagnostics.hint },
    TelescopeSelection = { fg = ss.diagnostics.hint, bg = ss.bg.cursorline },

    TelescopePromptTitle = { fg = ss.bg.floating, bg = ss.syntax.keyword, bold = true },
    TelescopePromptPrefix = { fg = ss.diagnostics.hint },
    TelescopePromptCounter = { fg = ss.diagnostics.hint },
    TelescopePromptNormal = { bg = ss.bg.cursorline },
    TelescopePromptBorder = { fg = ss.bg.cursorline, bg = ss.bg.cursorline },

    TelescopeResultsTitle = { fg = ss.bg.floating, bg = 'none', bold = true },
    TelescopeResultsNormal = { bg = ss.bg.floating },
    TelescopeResultsBorder = { fg = ss.bg.floating, bg = 'none' },

    TelescopePreviewTitle = { fg = ss.bg.floating, bg = ss.syntax.string, bold = true },
    TelescopePreviewNormal = { bg = 'none' },
    TelescopePreviewBorder = { fg = ss.bg.floating, bg = 'none' },
  }
end

return M
EOF
