require "user.utils"
vim.g.python3_host_prog = "/Users/peri/.config/nvim/lua/user/neovim/bin/python3"

return {
  -- colorscheme = "astrotheme",
  -- colorscheme = "gruvbox-baby",

  polish = function()
    local set = vim.opt

    set.autochdir = true
  end,
  -- diagnostic options for lsp-lines
  diagnostics = {
    virtual_lines = true,
    virtual_text = false,
    underline = true,
  },
  -- modify variables used by heirline but not defined in the setup call directly
  updater = {
    channel = "stable",
    remote = "origin",
    version = "latest",
    branch = "main",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
  },
}
