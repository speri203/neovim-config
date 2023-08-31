-- Suit of mini plugin family by folke
local prefix = "gz"
local maps = { n = {} }
local icon = vim.g.icons_enabled and "󰑤 " or ""
maps.n[prefix] = { desc = icon .. "Surround" }
require("astronvim.utils").set_mappings(maps)

return {
  {
    "echasnovski/mini.indentscope",
    lazy = true,
    event = "User AstroFile",
    opts = { symbol = "│", options = { try_as_border = true } },
    config = function(_, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "fzf", "starter", "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
        callback = function() vim.b.miniindentscope_disable = true end,
      })
      require("mini.indentscope").setup(opts)
    end,
  },
  {
    "echasnovski/mini.fuzzy",
    version = false,
    config = function() require("mini.fuzzy").setup() end,
  },
  {
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
  },
  {
    "echasnovski/mini.surround",
    keys = function(plugin, keys)
      -- Populate the keys based on the user's options
      local mappings = {
        { plugin.opts.mappings.add, desc = "Add surrounding", mode = { "n", "v" } },
        { plugin.opts.mappings.delete, desc = "Delete surrounding" },
        { plugin.opts.mappings.find, desc = "Find right surrounding" },
        { plugin.opts.mappings.find_left, desc = "Find left surrounding" },
        { plugin.opts.mappings.highlight, desc = "Highlight surrounding" },
        { plugin.opts.mappings.replace, desc = "Replace surrounding" },
        { plugin.opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines`" },
      }
      mappings = vim.tbl_filter(function(m) return m[1] and #m[1] > 0 end, mappings)
      return vim.list_extend(mappings, keys)
    end,
    opts = {
      mappings = {
        add = prefix .. "a", -- Add surrounding in Normal and Visual modes
        delete = prefix .. "d", -- Delete surrounding
        find = prefix .. "f", -- Find surrounding (to the right)
        find_left = prefix .. "F", -- Find surrounding (to the left)
        highlight = prefix .. "h", -- Highlight surrounding
        replace = prefix .. "r", -- Replace surrounding
        update_n_lines = prefix .. "n", -- Update `n_lines`
      },
    },
  },
}
