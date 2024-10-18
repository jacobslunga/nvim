function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, 'SignColumn', {bg='none'})
    vim.api.nvim_set_hl(0, 'CursorLine', {bg='none'})
    -- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none', fg = '#3D3B40' })
  end

  ColorMyPencils()
