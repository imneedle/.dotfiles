return {
    "ThePrimeagen/harpoon",
    lazy = true,
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    keys = {
        {
            "<leader>ha",
            ":lua require 'harpoon.mark'.add_file()<CR>",
            silent = true,
        },
        {
            "<leader>hm",
            ":lua require 'harpoon.ui'.toggle_quick_menu()<CR>",
            silent = true,
        },
        {
            "<C-h>",
            ":lua require 'harpoon.ui'.nav_file(1)<CR>",
            silent = true,
        },
        {
            "<C-t>",
            ":lua require 'harpoon.ui'.nav_file(2)<CR>",
            silent = true,
        },
        { "<C-n>", ":lua require 'harpoon.ui'.nav_file(3)<CR>", silent = true },
        { "<C-s>", ":lua require 'harpoon.ui'.nav_file(4)<CR>", silent = true },
    },
}
