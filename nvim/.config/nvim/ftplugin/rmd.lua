vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us,fr,cjk"
vim.opt_local.spellsuggest = "best,10"

local opts = { noremap = true, silent = true, buffer = true, nowait = true }

vim.keymap.set(
    "n",
    "<leader>r",
    [[:w<CR>:!R -e "rmarkdown::render('%:p:h/%:t:r.Rmd', output_format='html_document')"<CR>:!open %:p:h/%:t:r.html<CR><CR>]],
    opts
)
vim.keymap.set(
    "n",
    "<leader>l",
    [[:w<CR>:!R -e "rmarkdown::render('%:p:h/%:t:r.Rmd', output_format='pdf_document')"<CR>:!awk 'NR==9{print "\\usepackage{stmaryrd, mathrsfs, mathptmx, mathtools}"}1' %:p:h/%:t:r.tex > awk_out<CR>:!mv awk_out %:p:h/%:t:r.tex<CR>:!pdflatex %:p:h/%:t:r.tex<CR>:!open %:p:h/%:t:r.pdf<CR><CR>]],
    opts
)
