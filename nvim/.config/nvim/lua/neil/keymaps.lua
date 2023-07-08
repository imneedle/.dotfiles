local opts = { silent = true, nowait = true, remap = false }

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Get rid of this stupid mode
vim.keymap.set("n", "Q", "<Nop>", opts)

-- Searching
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)

-- Moving lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", opts)
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)
vim.keymap.set("n", "<leader>tb", ":-tabmove<CR>", opts)
vim.keymap.set("n", "<leader>tw", ":+tabmove<CR>", opts)

-- Registers
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], opts)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts)
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)
vim.keymap.set("x", "<leader>p", [["_dP]], opts)

-- tmux-sessionizer
vim.keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>", opts)

-- Project view
vim.keymap.set("n", "<leader>pv", ":silent Ex<CR>", opts)
