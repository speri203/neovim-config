-- Lualine handles the status bar at the bottom of the file along with
-- the buffer (tabs) section at the top of the file
return {
  -- Disabling heirline which is the default status bar plugin in AstroVim
  {
    "rebelot/heirline.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "BufWinEnter" },
    config = function() require "user.ui.lualine.lualine_2" end,
  },
}
