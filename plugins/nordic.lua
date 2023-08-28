return {
  "AlexvZyl/nordic.nvim",
  lazy = true,
  -- priority = 1000,
  config = function()
    local palette = require "nordic.colors"
    require("nordic").setup {
      theme = "nordic",
      bold_keywords = true,
      bright_border = true,
      swap_backgrounds = true,
      transparent_bg = false,
      cursorline = { theme = "light" },
      onedark = {
        brighter_whites = true,
      },
      override = {
        Visual = {
          bg = palette.blue0,
          fg = palette.black,
          bold = true, -- Or false.,
        },
        CursorLineNr = {
          fg = "#fabd2f",
          bold = true,
          italic = true,
        },
      },
      noice = {
        style = "flat",
      },
      telescope = {
        style = "flat",
      },
    }
  end,
}
