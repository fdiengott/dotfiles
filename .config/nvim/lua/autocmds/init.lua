vim.cmd('autocmd FileType help nmap <buffer> q :q<CR>')

require("autocmds.yank-highlight")

-- vim.api.nvim_create_augroup("copilot", { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", {
--     command = "!make setCopilot",
--     group = "copilot",
--     buffer = 0
-- })
