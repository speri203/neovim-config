return {
  "m4xshen/smartcolumn.nvim",
  event = { "InsertEnter", "User AstroFile" },
  config = function()
    require("smartcolumn").setup {
      colorcolumn = "80",
      disabled_filetypes = { "help", "text", "markdown" },
      custom_colorcolumn = {},
      scope = "file",
    }
  end,
}
