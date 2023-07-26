return {
  "luisiacc/gruvbox-baby",
  config = function()
    vim.g.gruvbox_baby_function_style = "NONE"
    vim.g.gruvbox_baby_background_color = "dark"
    vim.g.gruvbox_baby_transparent_mode = "true"
    vim.opt.cursorline = true
    vim.opt.cursorlineopt = "number"
    vim.g.gruvbox_baby_highlights = { CursorLineNr = { fg = "#fabd2f", bg = "NONE", style = "bold" } }
    -- require("notify").setup {
    --   background_colour = "#000000",
    -- }
    --
    -- available options
    -- [background_color, transparent_mode, comment_style, keyword_style,
    -- string_style, function_style, variable_style, highlights = {},
    -- color_overrides = {}, use_original_palette]
    -- https://github.com/luisiacc/gruvbox-baby
  end,
}
