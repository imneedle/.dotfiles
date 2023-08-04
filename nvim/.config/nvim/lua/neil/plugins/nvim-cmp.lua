return {
    "hrsh7th/nvim-cmp",
    lazy = true,
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-calc" },
        { "hrsh7th/cmp-buffer" },
        { "FelipeLema/cmp-async-path" },
        { "hrsh7th/cmp-cmdline" },
        { "saadparwaiz1/cmp_luasnip" },
        { "L3MON4D3/LuaSnip" },
    },
    event = { "BufReadPost", "BufNewFile" },
    opts = function()
        -- Set up nvim-cmp.
        local cmp = require("cmp")
        return {
            experimental = {
                ghost_text = true,
                native_menu = false,
            },
            preselect = cmp.PreselectMode.None,
            complete = {
                completeopt = "menu,menuone,noinsert,noselect",
            },
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<Up>"] = cmp.mapping.scroll_docs(-4),
                ["<Down>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping(function(fallback)
                    if require("luasnip").expandable() then
                        require("luasnip").expand()
                    else
                        fallback()
                    end
                end, { "i" }),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if require("luasnip").jumpable(1) then
                        require("luasnip").jump(1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if require("luasnip").jumpable(-1) then
                        require("luasnip").jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- For luasnip users.
                { name = "buffer" },
                { name = "async_path" },
                { name = "nvim_lua" },
            }),
        }
    end,
    config = function(_, opts)
        local cmp = require("cmp")
        cmp.setup(opts)

        cmp.mapping.confirm({ select = true })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "async_path" },
            }, {
                { name = "cmdline" },
            }),
        })

        -- Set up lspconfig.
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local servers = require("neil.plugins.mason.servers")
        for _, lsp in ipairs(servers) do
            require("lspconfig")[lsp].setup({ capabilities = capabilities })
        end

        -- Configuration
    end,
}
