local lsp = require('lspconfig')

local client_cap = vim.lsp.protocol.make_client_capabilities()
client_cap = require('cmp_nvim_lsp').update_capabilities(client_cap)

lsp.clangd.setup({
    capabilities = client_cap,
    cmd = { "clangd-14",
            "--malloc-trim",
            "-j=4",
            "--background-index",
            "--pch-storage=memory",
            "--inlay-hints",
            "--header-insertion=never",
    },
    filetypes = { "c", "h", "cpp", "hpp", "objc", "objcpp" },
})
