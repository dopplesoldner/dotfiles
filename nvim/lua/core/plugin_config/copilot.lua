--highlight gray
--highlight gray guifg=#5c6370
--vim.cmd[[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]

require("copilot").setup {
  filetypes = {
    javascript = true, -- allow specific filetype
    typescript = true, -- allow specific filetype
    python = true,
    html = true,
    css = true,
    sql = true,
    ["*"] = false, -- disable for all other filetypes and ignore default `filetypes`
    suggestion = { enabled = false },
    panel = { enabled = false }
  },
}

