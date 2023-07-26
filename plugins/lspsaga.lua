return {
  "glepnir/lspsaga.nvim",
  lazy = false,
  enabled = true,
  config = function()
    require("lspsaga").setup {
      lightbulb = {
        enable = false,
        enable_in_insert = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      -- vim.api.nvim_set_hl(0, "HoverNormal", { fg = "#e7d7ad", bg = "#242424" }),
      -- vim.api.nvim_set_hl(0, "HoverBorder", { fg = "#e7d7ad", bg = "#242424" }),
      vim.api.nvim_set_hl(0, "HoverNormal", { fg = "#e7d7ad", guibg = NONE }),
      vim.api.nvim_set_hl(0, "HoverBorder", { fg = "#e7d7ad", guibg = NONE }),
    }
  end,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    --Please make sure you install markdown and markdown_inline parser
    { "nvim-treesitter/nvim-treesitter" },
  },
}
