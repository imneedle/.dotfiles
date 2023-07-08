return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>pf",
            ":lua require('telescope.builtin').find_files({ hidden = true })<CR>",
        },
        {
            "<leader>pg",
            ":lua require('telescope.builtin').live_grep()<CR>",
        },
        {
            "<leader>pb",
            ":lua require('telescope.builtin').buffers()<CR>",
        },
        {
            "<leader>ph",
            ":lua require('telescope.builtin').help_tags()<CR>",
        },
        {
            "<leader>pq",
            ":lua require('telescope.builtin').quickfix()<CR>",
        },
        {
            "<leader>pr",
            ":lua require('telescope.builtin').registers()<CR>",
        },
    },
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        mirror = false,
                        width = 0.8,
                        prompt_position = "top",
                        preview_width = 80,
                    },
                },
                mappings = {
                    i = {
                        ["<Tab>"] = actions.select_tab, -- open in a new tab
                        ["<S-Tab>"] = actions.select_tab, -- open in a new tab
                        ["<Esc>"] = actions.close, -- quit
                    },
                },
            },
        })
    end,
}
