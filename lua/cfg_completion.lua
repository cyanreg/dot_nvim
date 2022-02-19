local cmp = require('cmp')
local luasnip = require("luasnip")
local lspkind = require('lspkind')

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    enabled = function()
        local ctx = require"cmp.config.context"
        if ctx.in_treesitter_capture("comment") == true or
           ctx.in_treesitter_capture("string") == true or
           ctx.in_syntax_group("Comment") == true or
           ctx.in_syntax_group("String") == true then
            return false
        else
            return true
        end
    end,

    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    completion = {
        keyword_length = 3,
        autocomplete = false,
    },
    experimental = {
        native_menu = false,
        ghost_text = { hl_group = "Comment" },
    },
    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            menu = ({
                buffer        = "[Buffer]",
                nvim_lsp      = "[LSP]",
                luasnip       = "[LuaSnip]",
                nvim_lua      = "[Lua]",
                latex_symbols = "[Latex]",
            })
        })
    },
    mapping = {
        -- Close
        ['<Esc>'] = cmp.mapping.abort(),
        ['<S-Esc>'] = cmp.mapping.close(),

        -- Docs
        ['<S-Down>'] = cmp.mapping.scroll_docs(1),

        -- Select
        ['<Down>'] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Select,
        }),
        ['<Up>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Select,
        }),

        -- Complete
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end,
            { "i", "s" }
        ),

        ["<S-Tab>"] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end,
            { "i", "s" }
        ),

        ['<CR>'] = cmp.mapping(
            function(fallback)
                if luasnip.expand_or_jumpable() and cmp.get_selected_entry() == nil then
                    luasnip.expand_or_jump()
                elseif cmp.visible() and cmp.get_selected_entry() ~= nil then
                    cmp.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })
                    if luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    end
                else
                    fallback()
                end
            end,
            { "i", "s" }
        ),
    },
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'luasnip' }, -- For luasnip users.
        }, {
            { name = 'buffer' },
            { name = 'calc' },
        }
    )
})

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp_document_symbol' },
        }, {
            { name = 'buffer' },
        }
    )
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources(
        {
            { name = 'path' },
        }, {
            { name = 'cmdline' },
            { name = 'calc' }
        }
    )
})
