return {
  { "luukvbaal/statuscol.nvim", lazy = true, opts = {} },
  {
    "rebelot/heirline.nvim",
    opts = function(opts) opts.statuscolumn = nil end,
  },
}
