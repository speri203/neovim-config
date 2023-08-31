return {
  "VidocqH/lsp-lens.nvim",
  event = "LspAttach",
  enabled = true,
  config = function() require "user.lsp.lsp_plugs.lsp_lens" end,
}
