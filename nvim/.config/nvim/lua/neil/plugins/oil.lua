return {
    "stevearc/oil.nvim",
    lazy = true,
    cmd = "Oil",
    event = { "BufReadPost", "BufNewFile", "VimEnter */*,.*", "BufNew */*,.*" },
    ft = { "netrw", "oil" },
    keys = {
        { "<leader>pv", ":Oil<CR>", silent = true },
    },
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            "permissions",
            -- "size",
            -- "mtime",
        },
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
