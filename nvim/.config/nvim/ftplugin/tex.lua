vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us,fr,cjk"
vim.opt_local.spellsuggest = "best,10"

local opts = { noremap = true, silent = true, buffer = true, nowait = true }

vim.keymap.set(
    "n",
    "<leader>r",
    ":w<CR>:!pdflatex %<CR>:!open %:p:h/%:t:r.pdf<CR><CR>",
    opts
)
vim.keymap.set(
    "n",
    "<leader>d",
    ":w<CR>:!rm -rf %:r.log %:r.out %:r.aux<CR>",
    opts
)
