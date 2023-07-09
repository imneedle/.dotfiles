-- highlight on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    command = "silent! lua vim.highlight.on_yank()",
    group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
})

-- Better comments with format options
local betterFormatOptionsGroup =
    vim.api.nvim_create_augroup("BetterFormatOptions", { clear = true })
-- Disable auto comment wrapping when line exceeds 80 chars
vim.api.nvim_create_autocmd("FileType", {
    command = "silent! set formatoptions-=c",
    group = betterFormatOptionsGroup,
})
-- Disable auto inserting comment leader when pressing <CR> (enter) on comment
vim.api.nvim_create_autocmd("FileType", {
    command = "silent! set formatoptions-=r",
    group = betterFormatOptionsGroup,
})
-- Disable auto inserting comment leader when pressing "o" or "O" on comment
vim.api.nvim_create_autocmd("FileType", {
    command = "silent! set formatoptions-=o",
    group = betterFormatOptionsGroup,
})
