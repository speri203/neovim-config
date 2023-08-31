vim.opt.termguicolors = true

require("bufferline").setup {
  highlights = {},
  options = {
    diagnostics = "nvim_lsp",
    color_icons = true,
    separator_style = "thin",
    modified_icon = "●",
    buffer_close_icon = "",
    offsets = {
      {
        filetype = "neo-tree",
        text = function() return vim.fn.getcwd() end,
        highlight = "Directory",
        separator = true, -- use a "true" to enable the default, or set your own character
      },
    },
  },
}
