function ColorMyPencils()
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
 -- require("colorbuddy").colorscheme "gruvbuddy"
 -- require("colorizer").setup()

 -- local Group = require("colorbuddy.group").Group
 -- local c = require("colorbuddy.color").colors
 -- local styles = require("colorbuddy.style").styles

 -- Group.new("Normal", c.white, c.none)
 -- Group.new("GoTestSuccess", c.green, nil, styles.bold)
 -- Group.new("GoTestFail", c.red, nil, styles.bold)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, 'CursorLineNr', {fg='white', bg='NONE', bold=true})
  vim.api.nvim_set_hl(0, 'SignColumn', {bg='NONE'})
  vim.api.nvim_set_hl(0, 'LineNr', {fg='#A9A9A9', bg='NONE'})
end

ColorMyPencils()

