local M = {}
M.astrotheme = function()
  local astrotheme = require "astrotheme.colors"
  -- bg is the color of the cmp menu background and fg is the color of the
  -- buffer text to the right
  vim.api.nvim_set_hl(0, "Pmenu", { fg = astrotheme.blue, bg = astrotheme.black })
  -- fg is the color of the highlighted item in menu and the bg is the color of the
  -- item highlighted
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#191D24", bg = astrotheme.blue, bold = true, italic = true })
  -- fg is the color of the box around the cmp menu, bg is the color of the content
  -- within the cmp menu
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = astrotheme.blue, bg = astrotheme.black })
  -- fg is the color of the characters in fuzzy find not typed
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = astrotheme.red })
  -- fg is the color of the characters typed in correct order of the fuzzy find
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = astrotheme.green })
  -- fg is the color the characters found but not in the correct location
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = astrotheme.gold })
  -- Not sure what this is
  vim.api.nvim_set_hl(0, "PmenuThumb", { fg = astrotheme.blue, bg = astrotheme.yellow })
end

M.nordictheme = function()
  local palette = require "nordic.colors"
  vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.yellow.bright, bg = palette.black1 })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#191D24", bg = palette.orange.bright, bold = true, italic = true })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = palette.orange.bright, bg = palette.black1 })
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = palette.red.bright })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = palette.green.bright })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = palette.yellow.bright })
  vim.api.nvim_set_hl(0, "PmenuThumb", { fg = palette.orange.bright, bg = palette.yellow.base })
end

M.nightfox = function()
  local palette = require("nightfox.palette").load "nightfox"
  vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.green.bright, bg = palette.bg1 })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#191D24", bg = palette.orange.bright, bold = true, italic = true })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = palette.orange.bright, bg = palette.bg1 })
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = palette.red.bright })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = palette.green.bright })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = palette.yellow.bright })
  vim.api.nvim_set_hl(0, "PmenuThumb", { fg = palette.orange.bright, bg = palette.yellow.base })
end

return M
