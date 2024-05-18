local group = vim.api.nvim_create_augroup("ftdetectContainerFile", {
    clear = true,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    callback = function()
        vim.bo.filetype = "dockerfile"
    end,
    pattern = "*.ContainerFile",
    group = group,
})
