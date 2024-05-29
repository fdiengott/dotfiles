-- COLORS / guibg for background, guifg for foreground
-- vim.cmd("highlight Normal guibg=#000000")
-- vim.cmd("highlight @tag guifg=#7fccf0")
-- vim.cmd("highlight @variable guifg=#d49adb")

-- editor colors
vim.cmd("highlight normal guibg=#000408")
vim.cmd("highlight lualine_a_normal guibg=#e7a7fd")

vim.cmd("highlight lualine_a_buffers_active guibg=#91dbfa guifg=#000000 gui='bold'")
vim.cmd("highlight lualine_a_buffers_inactive guibg=#222408")
vim.cmd("highlight lualine_z_tabs_active guibg=#e7a7fd guifg=#000000 gui='bold'")

vim.cmd("highlight TabLineSel guibg=#0044aa")

-- cursor colors
vim.cmd('highlight cursor guibg=#aaaaaa')
vim.cmd('highlight vcursor guibg=#cccc00')
vim.cmd("highlight CursorLine guibg=#202225")

-- search
vim.cmd("highlight IncSearch guibg=#ffffff")
-- vim.cmd("highlight Search guibg=#bbbbbb guifg=#000000")

vim.cmd("highlight FlashMatch guibg=#e7a7fd guifg=#000000")
vim.cmd("highlight FlashCurrent guibg=#ffffff guifg=#ff0000 gui=bold,italic,underline")
vim.cmd("highlight FlashLabel guibg=#bae4f5 guifg=#000000")
vim.cmd("highlight FlashPrompt guibg=#ffff22 guifg=#000000")
vim.cmd("highlight FlashPromptIcon guifg=#000000")
