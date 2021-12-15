local lsp = require('lspconfig')

local client_cap = vim.lsp.protocol.make_client_capabilities()
client_cap = require('cmp_nvim_lsp').update_capabilities(client_cap)

clang_format = "{ " ..
    "Language: Cpp, " ..
    "BasedOnStyle: WebKit, "..
    "IndentWidth: 4, " ..
    "DerivePointerAlignment: false, " ..
    "PointerAlignment: right, " ..
    "QualifierAlignment: left, " ..
    "AlignAfterOpenBracket: true, " ..
    "AlignArrayOfStructures: right, " ..
    "AlignEscapedNewlines: right, " ..
    "AllowShortIfStatementsOnASingleLine: never, " ..
    "ReflowComments: true, " ..
    "UseTab: false, " ..
    "UseCRLF: false, " ..
    "BreakBeforeBraces: Custom, " ..
    "BraceWrapping: " ..
        "AfterCaseLabel: false, " ..
        "AfterControlStatement: MultiLine, " ..
        "AfterEnum: false, " ..
        "AfterFunction: true, " ..
        "AfterNamespace: false, " ..
        "AfterStruct: false, " ..
        "AfterUnion: false, " ..
        "BeforeElse: false, " ..
        "BeforeWhile: false, " ..
"}"

lsp.clangd.setup({
    capabilities = client_cap,
    cmd = { "clangd-14",
            "--malloc-trim",
            "-j=4",
            "--background-index",
            "--pch-storage=memory",
            "--inlay-hints",
            "--header-insertion=never",
            "--fallback-style='" ..clang_format .. "'",
--            "--completion-style=bundled",
    },
    filetypes = { "c", "h", "cpp", "hpp", "objc", "objcpp" },
})
