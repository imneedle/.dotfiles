return {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "bash",
                "c",
                "cmake",
                "comment",
                "cpp",
                "css",
                "dockerfile",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "haskell",
                "html",
                "java",
                "javascript",
                "json",
                "json5",
                "latex",
                "lua",
                "luadoc",
                "make",
                "markdown",
                "markdown_inline",
                "pug",
                "python",
                "r",
                "regex",
                "rust",
                "scss",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            -- List of parsers to ignore installing (for "all")
            ignore_install = {},

            ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

            highlight = {
                enable = true,
                disable = {},
                additional_vim_regex_highlighting = true,
            },
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = 1000, -- do not enable for files with more that 1000 lines
            },
            incremental_selection = {
                enable = true, -- false will disable the whole extension
                disable = {}, -- list of languages that will be disabled
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm",
                },
            },
            textobjects = {
                select = {
                    enable = true,
                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,
                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                        ["aa"] = "@parameter.outer",
                        ["ia"] = "@parameter.inner",
                        ["av"] = "@variable.outer",
                        ["iv"] = "@variable.inner",
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        ["]p"] = "@parameter.inner",
                        ["]m"] = "@function.outer",
                        ["]]"] = "@class.outer",
                    },
                    goto_next_end = {
                        ["]M"] = "@function.outer",
                        ["]["] = "@class.outer",
                    },
                    goto_previous_start = {
                        ["[p"] = "@parameter.inner",
                        ["[m"] = "@function.outer",
                        ["[["] = "@class.outer",
                    },
                    goto_previous_end = {
                        ["[M"] = "@function.outer",
                        ["[]"] = "@class.outer",
                    },
                },
                swap = {
                    enable = true,
                    swap_next = {
                        ["<leader>sp"] = "@parameter.inner",
                        ["<leader>sf"] = "@function.outer",
                    },
                    swap_previous = {
                        ["<leader>sP"] = "@parameter.inner",
                        ["<leader>sF"] = "@function.outer",
                    },
                },
            },
        })
    end,
}
