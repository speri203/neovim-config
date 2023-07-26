return {
  "echasnovski/mini.move",
  lazy = true,
  config = function(_, opts) require("mini.move").setup(opts) end,
  keys = {
    { "<C-l>", mode = { "n", "v" } },
    { "<A-k>", mode = { "n", "v" } },
    { "<A-j>", mode = { "n", "v" } },
    { "<C-h>", mode = { "n", "v" } },
  },
  opts = {
    mappings = {
      left = "<C-h>",
      right = "<C-l>",
      down = "<A-j>",
      up = "<A-k>",
      line_left = "<C-h>",
      line_right = "<C-l>",
      line_down = "<A-j>",
      line_up = "<A-k>",
    },
  },
  options = {
    -- Automatically reindent selection during linewise vertical move
    reindent_linewise = true,
  },
}
