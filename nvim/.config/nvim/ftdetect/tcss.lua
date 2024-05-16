local group = vim.api.nvim_create_augroup("ftdetectTcss", {
    clear = true,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    command = "set filetype=css",
    pattern = "*.tcss",
    group = group,
})
