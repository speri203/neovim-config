-- Bufferline allows multiple buffers tabs to be stacked on the top panel
-- while also adding indicators for file updates, styling, etc.
return {
  "akinsho/bufferline.nvim",
  event = "BufWinEnter",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function() require "user.ui.bufferline.bufferline" end,
}
