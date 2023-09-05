-- Lualine handles the status bar at the bottom of the file along with
-- the buffer (tabs) section at the top of the file
return {
  -- Disabling heirline which is the default status bar plugin in AstroVim
  {
    "rebelot/heirline.nvim",
    lazy = true,
    event = { "BufWinEnter" },
    enabled = true,
    event = "User AstroFile",
    opts = function() return require "user.ui.heirline.heirline" end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
    event = { "BufWinEnter" },
    enabled = false,
    config = function() require "user.ui.lualine.lualine_3" end,
  },
}
