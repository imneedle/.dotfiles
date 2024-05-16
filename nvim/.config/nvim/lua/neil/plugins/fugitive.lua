return {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = "Git",
    keys = {
        { "gu", ":diffget //2<CR>", silent = true },
        { "gh", ":diffget //3<CR>", silent = true },
    },
    config = function()
        local fugitive_group =
            vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = fugitive_group,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git("push")
                end, opts)

                -- rebase always
                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({ "pull", "--rebase" })
                end, opts)
            end,
        })
    end,
}
