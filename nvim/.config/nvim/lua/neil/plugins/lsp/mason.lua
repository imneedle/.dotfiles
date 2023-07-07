return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    lazy = false,
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require "mason-lspconfig".setup {
                    -- A list of servers to automatically install if they're
                    -- not already installed. Example: {
                    -- "rust_analyzer@nightly", "lua_ls" }
                    -- This setting has no relation with the
                    -- `automatic_installation` setting.
                    ---@type string[]
                    ensure_installed = require "neil.plugins.lsp.servers",

                    -- Whether servers that are set up (via lspconfig) should
                    -- be automatically installed if they're not already
                    -- installed.
                    -- This setting has no relation with the `ensure_installed`
                    -- setting.
                    -- Can either be:
                    --   - false: Servers are not automatically installed.
                    --   - true: All servers set up via lspconfig are
                    --   automatically installed.
                    --   - { exclude: string[] }: All servers set up via
                    --   lspconfig, except the ones provided in the list, are
                    --   automatically installed.
                    --       Example: automatic_installation = { exclude = {
                    --       "rust_analyzer", "solargraph" } }
                    ---@type boolean
                    automatic_installation = false,

                    -- See `:h mason-lspconfig.setup_handlers()`
                    ---@type table<string, fun(server_name: string)>?
                    handlers = nil,
                }
            end,
        }
    },
    config = function()
        require "mason".setup {
            -- The directory in which to install packages.
            install_root_dir = vim.fn.stdpath "data" .. "mason" ,

            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                },
                keymaps = {
                    -- Keymap to expand a package
                    toggle_package_expand = "<CR>",
                    -- Keymap to install the package under the current cursor position
                    install_package = "i",
                    -- Keymap to reinstall/update the package under the current cursor position
                    update_package = "u",
                    -- Keymap to check for new version for the package under the current cursor position
                    check_package_version = "c",
                    -- Keymap to update all installed packages
                    update_all_packages = "U",
                    -- Keymap to check which installed packages are outdated
                    check_outdated_packages = "C",
                    -- Keymap to uninstall a package
                    uninstall_package = "X",
                    -- Keymap to cancel a package installation
                    cancel_installation = "<C-c>",
                    -- Keymap to apply language filter
                    apply_language_filter = "<C-f>",
                },
            },
        }
    end,
}
