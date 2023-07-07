return {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-path"},
        {"hrsh7th/cmp-cmdline"},
        {"saadparwaiz1/cmp_luasnip"},
        {"L3MON4D3/LuaSnip"},
    },
    config = function()
        -- Set up nvim-cmp.
        local cmp = require'cmp'

        cmp.setup({
          experimental = {
            ghost_text = true,
            native_menu = false
          },
          snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
              require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            end,
          },
          window = {
            -- completion = cmp.config.window.bordered(),
            -- documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-Space>"] = cmp.mapping(
                function(fallback)
                    if require "luasnip".expandable() then
                        require "luasnip".expand()
                    else
                        fallback()
                    end
                end,
                {"i"}
            ),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping(
                function(fallback)
                    if require "luasnip".jumpable(1) then
                        require "luasnip".jump(1)
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            ),
            ["<S-Tab>"] = cmp.mapping(
                function(fallback)
                    if require "luasnip".jumpable(-1) then
                        require "luasnip".jump(-1)
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            )
          }),
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' }, -- For luasnip users.
          }, {
            { name = 'buffer' },
          }, {
            { name = "path" },
          })
        })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
            { name = 'path' }
          }, {
            { name = 'cmdline' }
          })
        })

        -- Set up lspconfig.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
	local servers = require "neil.plugins.lsp.servers"

        for _, lsp in ipairs(servers) do
            require("lspconfig")[lsp].setup {capabilities = capabilities}
        end
    end,
}
