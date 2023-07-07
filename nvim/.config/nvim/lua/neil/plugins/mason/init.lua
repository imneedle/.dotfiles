return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    lazy = true,
    cmd = "Mason",
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
            lazy = false,
	    priority = 1000,
            opts = {
                ensure_installed = require("neil.plugins.mason.servers"),
            },
        },
    },
    config = function()
        require("mason").setup({
            -- The directory in which to install packages.
            install_root_dir = vim.fn.stdpath("data") .. "/mason",

            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
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
        })
    end,
}
