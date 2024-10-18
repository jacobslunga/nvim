-- lsp.lua

-- Ensure that the required plugins are loaded
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

-- Initialize mason
mason.setup()

-- Ensure that the following language servers are installed
local servers = {
  "pyright",        -- Python
  "rust_analyzer",  -- Rust
  "clangd",         -- C/C++
  "html",           -- HTML
  "cssls",          -- CSS
  "jsonls",         -- JSON
  "bashls",         -- Bash
  "vimls",          -- vimls
  "yamlls",         -- yamlls
  "dockerls",       -- dockerls
  "graphql",        -- graphql
  "jdtls",          -- JavaScript
}

mason_lspconfig.setup {
  ensure_installed = servers,
}

-- Keep a stack of locations for going back
local location_stack = {}

-- Helper function to go to definition and track location
local function go_to_definition()
  local current_pos = vim.api.nvim_win_get_cursor(0)
  local current_file = vim.api.nvim_buf_get_name(0)
  table.insert(location_stack, {current_file, current_pos})
  vim.lsp.buf.definition()
end

-- Helper function to go back to the previous location
local function go_back()
  if #location_stack > 0 then
    local location = table.remove(location_stack)
    vim.api.nvim_set_current_buf(vim.fn.bufnr(location[1]))
    vim.api.nvim_win_set_cursor(0, location[2])
  else
    print("No previous location to go back to")
  end
end

-- Default configuration for all LSP servers
local default_config = {
  on_attach = function(client, bufnr)
    local buf_map = vim.api.nvim_buf_set_keymap
    local opts = { noremap = true, silent = true }

    buf_map(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_map(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_map(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_map(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_map(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_map(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_map(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_map(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_map(bufnr, 'n', 'gr', '<C-o>', opts)
    buf_map(bufnr, 'n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_map(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_map(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_map(bufnr, 'n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_map(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  end,

  flags = {
    debounce_text_changes = 150,
  }
}

-- Configure each server
for _, server in ipairs(servers) do
  lspconfig[server].setup(default_config)
end
