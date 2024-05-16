local group = vim.api.nvim_create_augroup("ftdetectPlaintex", {
    clear = true,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    callback = function()
        vim.bo.filetype = "tex"
    end,
    pattern = "*.tex",
    group = group,
})
