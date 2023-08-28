return {
  "luckasRanarison/nvim-devdocs",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nvim-devdocs").setup {
      previewer_cmd = "glow",
      cmd_args = { "-s", "dark" }, -- example using glow { "-s", "dark", "-w", "80" }
    }
  end,
}
