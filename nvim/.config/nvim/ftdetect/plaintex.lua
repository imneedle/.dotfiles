local group = vim.api.nvim_create_augroup("ftdetectPlaintex", {
    clear = true
})
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    command = "set filetype=tex",
    pattern = "*.tex",
    group = group,
})
