local lsp = require('lsp-zero')

local on_attach = function(client, bufnr)
  vim.lsp.buf.format()
end

lsp.on_attach(function(client, bufnr)
  local opts = { noremap=true, silent=true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gp', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end)

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

