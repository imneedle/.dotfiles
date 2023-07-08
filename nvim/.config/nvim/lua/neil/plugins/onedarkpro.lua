return {
    "olimorris/onedarkpro.nvim",
    lazy = false, -- Make sure we load this plugin during startup
    priority = 1000, -- Make sure we load this plugin before all other plugins
    config = function() -- Set the colorscheme on load
        vim.cmd("colorscheme onedark")
    end,
}
