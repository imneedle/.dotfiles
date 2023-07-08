-- Vim display
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

-- User interface
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.foldenable = false
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:> ")
vim.opt.listchars:append("trail:·")
vim.opt.listchars:append("nbsp:⎵")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Temporary directories
vim.opt.swapfile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true
vim.opt.backup = false

-- Window splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Scrolloff
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 4

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Misc options
vim.opt.confirm = true
