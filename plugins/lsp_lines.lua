-- Line diagnostics that displays multiple warnings/errors all at once rather than
-- just one inline diagnostic at a time
return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  lazy = true,
  event = { "LspAttach" },
  after = "mason-lspconfig.nvim",
  module = "lsp_lines",
  config = function() require("lsp_lines").setup() end,
}
