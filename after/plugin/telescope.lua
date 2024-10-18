local builtin = require('telescope.builtin')

-- Set up Telescope with disabled icons
require('telescope').setup{
  defaults = {
    -- Disable icons for the entries in Telescope results
    file_ignore_patterns = {"node_modules"},
    prompt_prefix = " ",      -- Empty prefix to avoid icons
    selection_caret = " ",    -- Empty caret to avoid icons
    entry_prefix = " ",       -- Empty entry prefix
    path_display = { "truncate" },
  },
  pickers = {
    find_files = {
      disable_devicons = true, -- Disable devicons specifically for find_files
    },
    git_files = {
      disable_devicons = true, -- Disable devicons for git_files picker
    },
  },
}

-- Keybindings for Telescope pickers
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})

