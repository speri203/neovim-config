-- Stores session information with respect to recently closed projects. Lets you
-- pick up where you left off previously
return {
  "folke/persistence.nvim",
  lazy = true,
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
    dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"), -- directory where session files are saved
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
  },
}
