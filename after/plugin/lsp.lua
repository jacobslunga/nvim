local lsp = require('lsp-zero')

local on_attach = function(client, bufnr)
    vim.lsp.buf.format()
end

lsp.setup_servers({
    "gopls",
    "rust_analyzer",
    "pyright",
    "tsserver",
    "svelte",
    "clangd",
    "jdtls",
    "elixirls"
})

lsp.setup()

