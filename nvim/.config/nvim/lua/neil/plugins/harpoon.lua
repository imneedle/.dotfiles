return {
    "ThePrimeagen/harpoon",
    lazy = true,
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    keys = {
        { "<leader>ha", ":lua require 'harpoon.mark'.add_file()<CR>" },
        {
            "<leader>hm",
            ":lua require 'harpoon.ui'.toggle_quick_menu()<CR>",
        },
        { "<C-h>", ":lua require 'harpoon.ui'.nav_file(1)<CR>" },
        { "<C-t>", ":lua require 'harpoon.ui'.nav_file(2)<CR>" },
        { "<C-n>", ":lua require 'harpoon.ui'.nav_file(3)<CR>" },
        { "<C-s>", ":lua require 'harpoon.ui'.nav_file(4)<CR>" },
    },
}
