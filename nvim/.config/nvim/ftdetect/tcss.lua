local group = vim.api.nvim_create_augroup("ftdetectTcss", {
    clear = true,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    callback = function()
        vim.bo.filetype = "css"
    end,
    pattern = "*.tcss",
    group = group,
})
