-- Plugin to fetch and show documentation from DevDocs. Utilizing Glow for
-- markup support
return {
  "luckasRanarison/nvim-devdocs",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function() require "user.ui.dev_docs.dev_docs" end,
}
