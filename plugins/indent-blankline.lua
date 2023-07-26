vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.opt.listchars:append "eol:↴"
return {
    "lukas-reineke/indent-blankline.nvim",
    event = "User AstroFile",
    lazy = true,
    opts = {
        char = "│",
        filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        show_trailing_blankline_indent = true,
        show_end_of_line = true,
        show_current_context = false,
        char_highlight_list = {
            -- "IndentBlanklineIndent2",
        },
    },
}
