return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>tA",
        "<cmd>Telescope aerial<CR>",
        desc = "Open Telescope Aerial",
      },
    },
    config = function() require("telescope").load_extension "aerial" end,
  },
  {
    "jay-babu/project.nvim",
    name = "project_nvim",
    event = "VeryLazy",
    opts = { ignore_lsp = { "lua_ls" } },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    dependencies = { "project_nvim" },
    opts = function() require("telescope").load_extension "projects" end,
  },
}
