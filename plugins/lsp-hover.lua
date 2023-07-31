return {
  "lewis6991/hover.nvim",
  lazy = true,
  event = { "LspAttach" },
  config = function()
    require("hover").setup {
      init = function()
        -- Require providers
        require "hover.providers.lsp"
        require "hover.providers.gh"
        -- require('hover.providers.gh_user')
        -- require('hover.providers.jira')
        require "hover.providers.man"
        -- require "hover.providers.dictionary"
      end,
      preview_opts = {
        border = "rounded",
      },
      -- Whether the contents of a currently open hover window should be moved
      -- to a :h preview-window when pressing the hover keymap.
      preview_window = false,
      title = true,
    }

    -- Setup keymaps
    vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
    vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
    vim.api.nvim_set_hl(0, "HoverNormal", { fg = "#e7d7ad", guibg = NONE })
    vim.api.nvim_set_hl(0, "HoverBorder", { fg = "#e7d7ad", guibg = NONE })
  end,
}
