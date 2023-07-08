-- Hide the annoying banner
vim.g.netrw_banner = 0

-- Enable recursive cp
vim.g.netrw_localcopycmd = "cp -r"

--Enable recursive rm
vim.g.netrw_localrmdir = "rm -r"

-- File tree takes up 25% of the page
vim.g.netrw_winsize = 25

-- Enable tree mode in filetree
vim.g.netrw_liststyle = 3

-- Enable absolute line numbers in filetree
vim.g.netrw_bufsettings = "noma nomod nowrap ro nobl"
