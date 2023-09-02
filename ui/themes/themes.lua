require("astrotheme").setup {
  style = {
    transparent = false, -- Bool value, toggles transparency.
    inactive = true, -- Bool value, toggles inactive window color.
    float = true, -- Bool value, toggles floating windows background colors.
    popup = true, -- Bool value, toggles popup background color.
    neotree = true, -- Bool value, toggles neo-trees background color.
    border = true, -- Bool value, toggles borders.
    title_invert = true, -- Bool value, swaps text and background colors.
    italic_comments = true, -- Bool value, toggles italic comments.
    simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
  },

  termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.

  terminal_color = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.

  plugin_default = "auto", -- Sets how all plugins will be loaded
  -- "auto": Uses lazy / packer enabled plugins to load highlights.
  -- true: Enables all plugins highlights.
  -- false: Disables all plugins.

  plugins = { -- Allows for individual plugin overrides using plugin name and value from above.
    ["bufferline.nvim"] = true,
  },

  highlights = {
    ui = {
      modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
        hl.Cursor.fg = "#000000"
        hl.Cursor.bg = "#FFFFFF"
      end,
    },
  },
  -- vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#ffffff" }),
  -- vim.api.nvim_set_hl(0, "Cursor2", { fg = "#000000", bg = "#ffffff" }),
}
