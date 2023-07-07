return {
    "ThePrimeagen/harpoon",
    lazy = true,
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    keys = {
        { "<silent><leader>ha", ":lua require 'harpoon.mark'.add_file()<CR>" },
        {
            "<silent><leader>hm",
            ":lua require 'harpoon.ui'.toggle_quick_menu()<CR>",
        },
        { "<silent><C-h>", ":lua require 'harpoon.ui'.nav_file(1)<CR>" },
        { "<silent><C-t>", ":lua require 'harpoon.ui'.nav_file(2)<CR>" },
        { "<silent><C-n>", ":lua require 'harpoon.ui'.nav_file(3)<CR>" },
        { "<silent><C-s>", ":lua require 'harpoon.ui'.nav_file(4)<CR>" },
    },
}
