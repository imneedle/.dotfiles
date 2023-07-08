local opts = { noremap = true, silent = true, nowait = true, buffer = true }

vim.keymap.set(
    "n",
    "<leader>r",
    [[:w<CR>:!open "%:p:h/%:t:r.html"<CR><CR>]],
    opts
)
