-- Hinting for function arguements when coding. Helpful for figuring out what
-- params are needed when calling specific functions
return {
  "ray-x/lsp_signature.nvim",
  lazy = false,
  event = { "LspAttach" },
  config = function() require "user.ui.lsp_signatures.lsp_signatures" end,
}
