local cmp = require('cmp')
local luasnip = require("luasnip")

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    completion = {
        keyword_length = 2,
    },
    experimental = {
        native_menu = true,
        ghost_text = { hl_group = "Comment" },
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

        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
    })
})

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
    })
})
