return {
  n = {
    -- NOTE: Buffer Movement
    ["<C-r>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-Tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- NOTE: Telescope keymaps
    ["<leader>fp"] = { ":Telescope projects<cr>", desc = "Open Telescope projects" },

    -- NOTE: Movement within file
    ["<S-d>"] = { "<C-d>zz", desc = "Jump down screen and center " },
    ["<S-u>"] = { "<C-u>zz", desc = "Jump up screen and center " },
    n = { "nzzzv", desc = "Jump to next search result and center screen" },
    N = { "Nzzzv", desc = "Jump to previous search result and center screen" },
    ["f"] = false,
    ["F"] = false,
    ["<leader>rn"] = {
      ":IncRename ",
      desc = "Rename with highlight group",
    },

    -- NOTE: LSP Saga related keybindings
    -- ----------------------------------
    ["<leader>la"] = {
      "<CMD>Lspsaga code_action<CR>",
      desc = "LSP code actions",
    },
    ["<leader>lp"] = {
      "<CMD>Lspsaga peek_type_definition<CR>",
      desc = "LSP peek definition",
    },
    ["<leader>lP"] = {
      "<CMD>Lspsaga finder<CR>",
      desc = "LSP reference/definition finder window",
    },
    ["<leader>rc"] = {
      run_code,
      desc = "Run code of selected file",
    },
  },
  -- Helpful keybindings for clearing/deleting data between special characters
  vim.keymap.set("o", "ar", "a]"), -- [r]ectangular bracket
  vim.keymap.set("o", "ac", "a}"), -- [c]urly brace
  vim.keymap.set("o", "am", "aW"), -- [m]assive word (= no shift needed)
  vim.keymap.set("o", "aq", 'a"'), -- [q]uote
  vim.keymap.set("o", "az", "a'"), -- [z]ingle quote
  vim.keymap.set("o", "ir", "i]"),
  vim.keymap.set("o", "ic", "i}"),
  vim.keymap.set("o", "im", "iW"),
  vim.keymap.set("o", "iq", 'i"'),
  vim.keymap.set("o", "iz", "i'"),

  vim.keymap.set("n", "<C-d>", "<C-w>j"),
  vim.keymap.set("n", "<C-u>", "<C-w>k"),
}
