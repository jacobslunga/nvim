function ColorMyPencils(color)
  --require("rose-pine").setup({
    --  variant = "auto",
    --  dark_variant = "main",
    --  dim_inactive_windows = false,
    --  extend_background_behind_borders = true,

    --  enable = {
      --    terminal = true,
      --    legacy_highlights = true,
      --    migrations = true,
      --  },

      --  styles = {
        --    bold = true,
        --    italic = false,
        --    transparency = false,
        --  },

        --  groups = {
          --    border = "muted",
          --    link = "iris",
          --    panel = "surface",

          --    error = "love",
          --    hint = "iris",
          --    info = "foam",
          --    note = "pine",
          --    todo = "rose",
          --    warn = "gold",

          --    git_add = "foam",
          --    git_change = "rose",
          --    git_delete = "love",
          --    git_dirty = "rose",
          --    git_ignore = "muted",
          --    git_merge = "iris",
          --    git_rename = "pine",
          --    git_stage = "iris",
          --    git_text = "rose",
          --    git_untracked = "subtle",

          --    h1 = "iris",
          --    h2 = "foam",
          --    h3 = "rose",
          --    h4 = "gold",
          --    h5 = "pine",
          --    h6 = "foam",
          --  },

          --  highlight_groups = {
            --    -- Comment = { fg = "foam" },
            --    -- VertSplit = { fg = "muted", bg = "muted" },
            --  },

            --  before_highlight = function(group, highlight, palette)
              --    -- Disable all undercurls
              --    -- if highlight.undercurl then
              --    --     highlight.undercurl = false
              --    -- end
              --    --
              --    -- Change palette colour
              --    -- if highlight.fg == palette.pine then
              --    --     highlight.fg = palette.foam
              --    -- end
              --  end,
              --})

              require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                  strings = false,
                  emphasis = false,
                  comments = false,
                  operators = false,
                  folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
              })

              color = color or "gruvbox"
              vim.cmd.colorscheme(color)

              vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
              vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
              vim.api.nvim_set_hl(0, 'SignColumn', {bg='NONE'})
              -- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none', fg = '#3D3B40' })
            end

            ColorMyPencils()
