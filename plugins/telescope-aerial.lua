return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>tA",
      "<cmd>Telescope aerial<CR>",
      desc = "Open Telescope Aerial",
    },
  },
  config = function() require("telescope").load_extension "aerial" end,
}
