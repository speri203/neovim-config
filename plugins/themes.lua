return {
  { "AstroNvim/astrotheme", opts = function() return require "user.ui.themes.themes" end },
  {
    "Everblush/nvim",
    name = "everblush",
    lazy = true,
    enabled = true,
    opts = function() return require "user.ui.themes.everblush" end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    enabled = false,
    -- priority = 1000,
    opts = function() return require "user.ui.themes.nordic" end,
  },
}
