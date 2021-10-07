local lsp = require('lspconfig')

local client_cap = vim.lsp.protocol.make_client_capabilities()
client_cap = require('cmp_nvim_lsp').update_capabilities(client_cap)

lsp.clangd.setup({
    capabilities = client_cap
})
