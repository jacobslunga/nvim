vim.opt.guicursor = ""
vim.opt.hidden = true
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.o.cursorline = true
vim.o.cursorlineopt = 'number'
vim.opt.signcolumn = 'yes:2'
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<C-o>', { noremap = true, silent = true })
-- vim.opt.colorcolumn = "80"
-- vim.opt.list = true
-- vim.opt.listchars = {
--   -- tab = "▸ ",
--   trail = "·",
--   extends = "❯",
--   precedes = "❮",
--   nbsp = "␣",
--   eol = "↲",
-- }
