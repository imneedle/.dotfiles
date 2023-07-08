return {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    init = function()
        -- load gitsigns only when a git file is opened
        vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
            group = vim.api.nvim_create_augroup(
                "GitSignsLazyLoad",
                { clear = true }
            ),
            callback = function()
                vim.fn.system(
                    "git -C "
                        .. '"'
                        .. vim.fn.expand("%:p:h")
                        .. '"'
                        .. " rev-parse"
                )
                if vim.v.shell_error == 0 then
                    vim.api.nvim_del_augroup_by_name("GitSignsLazyLoad")
                    vim.schedule(function()
                        require("lazy").load({ plugins = { "gitsigns.nvim" } })
                    end)
                end
            end,
        })
    end,
    keys = function()
        local gs = require("gitsigns")
        return {
            -- Navigating hunks
            {
                mode = "n",
                "]c",
                function()
                    if vim.wo.diff then
                        return "]c"
                    end
                    vim.schedule(function()
                        gs.next_hunk()
                    end)
                    return "<Ignore>"
                end,
                { expr = true },
            },
            {
                mode = "n",
                "[c",
                function()
                    if vim.wo.diff then
                        return "[c"
                    end
                    vim.schedule(function()
                        gs.prev_hunk()
                    end)
                    return "<Ignore>"
                end,
                { expr = true },
            },
            -- Actions
            { mode = "n", "<leader>gs", gs.stage_hunk },
            { mode = "n", "<leader>gr", gs.reset_hunk },
            {
                mode = "v",
                "<leader>gs",
                function()
                    gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end,
            },
            {
                mode = "v",
                "<leader>gr",
                function()
                    gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end,
            },
            { mode = "n", "<leader>gS", gs.stage_buffer },
            { mode = "n", "<leader>gu", gs.undo_stage_hunk },
            { mode = "n", "<leader>gR", gs.reset_buffer },
            { mode = "n", "<leader>gp", gs.preview_hunk },
            {
                mode = "n",
                "<leader>gb",
                function()
                    gs.blame_line({ full = true })
                end,
            },
            { mode = "n", "<leader>gb", gs.toggle_current_line_blame },
            { mode = "n", "<leader>gd", gs.diffthis },
            {
                mode = "n",
                "<leader>gD",
                function()
                    gs.diffthis("~")
                end,
            },
            { mode = "n", "<leader>gd", gs.toggle_deleted },
            -- Text object
            { mode = "o", "ih", ":<C-U>Gitsigns select_hunk<CR>" },
            { mode = "x", "ih", ":<C-U>Gitsigns select_hunk<CR>" },
        }
    end,
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "-" },
            topdelete = { text = "-" },
            changedelete = { text = "~" },
            untracked = { text = "┆" },
        },
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
            follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
            delay = 1000,
            ignore_whitespace = false,
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
            -- Options passed to nvim_open_win
            border = "single",
            style = "minimal",
            relative = "cursor",
            row = 0,
            col = 1,
        },
        yadm = {
            enable = false,
        },
    },
}
