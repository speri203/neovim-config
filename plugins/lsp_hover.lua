return {
  "lewis6991/hover.nvim",
  lazy = true,
  event = { "LspAttach" },
  config = function()
    require "user.lsp.lsp_plugs.lsp_hover"
    vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
    vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
  end,
}
