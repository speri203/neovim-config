local utils = require "astronvim.utils"

-- Plugin overrides the default behavior of d and dd, where it doesn't overwrite
-- what is in your clipboard
return {
  "gbprod/cutlass.nvim",
  lazy = true,
  event = { "User AstroFile" },
  opts = function(_, opts)
    if utils.is_available "leap.nvim" then opts.exclude = utils.list_insert_unique(opts.exclude, { "ns", "nS" }) end
  end,
}
