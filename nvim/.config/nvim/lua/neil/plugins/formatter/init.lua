return {
    "mhartington/formatter.nvim",
    lazy = true,
    keys = {
        { "<leader>f", ":Format<CR>", silent = true },
    },
    config = function()
        require("formatter").setup({
            logging = false,
            filetype = {
                c = {
                    require("neil.plugins.formatter.formatters.clang-format"),
                },
                cmake = {
                    require("neil.plugins.formatter.formatters.cmake-format"),
                },
                cpp = {
                    require("neil.plugins.formatter.formatters.clang-format"),
                },
                java = {
                    require("neil.plugins.formatter.formatters.clang-format"),
                },
                javascript = {
                    require("neil.plugins.formatter.formatters.prettier"),
                },
                json = { require("neil.plugins.formatter.formatters.prettier") },
                html = { require("neil.plugins.formatter.formatters.prettier") },
                lua = { require("neil.plugins.formatter.formatters.stylua") },
                markdown = {
                    require("neil.plugins.formatter.formatters.prettier"),
                },
                pug = { require("neil.plugins.formatter.formatters.prettier") },
                python = {
                    require("neil.plugins.formatter.formatters.black"),
                    require("neil.plugins.formatter.formatters.ruff"),
                },
                scss = { require("neil.plugins.formatter.formatters.prettier") },
                sh = { require("neil.plugins.formatter.formatters.shfmt") },
                sql = { require("neil.plugins.formatter.formatters.sqlfmt") },
                tex = {
                    require("neil.plugins.formatter.formatters.latexindent"),
                },
                typescript = {
                    require("neil.plugins.formatter.formatters.prettier"),
                },
                rust = { require("neil.plugins.formatter.formatters.rustfmt") },
            },
        })
    end,
}
