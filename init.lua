require "user.utils"
vim.g.python3_host_prog = "/Users/peri/.config/nvim/lua/user/neovim/bin/python3"

return {
  -- colorscheme = "astrotheme",
  colorscheme = "gruvbox-baby",

  polish = function()
    local set = vim.opt

    set.autochdir = true
  end,
  -- add new user interface icon
  icons = {
    VimIcon = "",
    ScrollText = "",
    GitBranch = "",
    GitAdd = "",
    GitChange = "",
    GitDelete = "",
  },

  -- diagnostic options for lsp-lines
  diagnostics = {
    virtual_lines = true,
    virtual_text = false,
    underline = true,
  },
  -- modify variables used by heirline but not defined in the setup call directly
  heirline = {
    -- define the separators between each section
    separators = {
      left = { "", " " }, -- separator for the left side of the statusline
      right = { " ", "" }, -- separator for the right side of the statusline
    },
    -- add new colors that can be used by heirline
    colors = function(hl)
      -- use helper function to get highlight group properties
      local comment_fg = require("astronvim.utils").get_hlgroup("Comment").fg
      hl.git_branch_fg = comment_fg
      hl.git_added = comment_fg
      hl.git_changed = comment_fg
      hl.git_removed = comment_fg
      hl.blank_bg = require("astronvim.utils").get_hlgroup("Folded").fg
      hl.file_info_bg = require("astronvim.utils").get_hlgroup("Visual").bg
      hl.nav_icon_bg = require("astronvim.utils").get_hlgroup("String").fg
      hl.nav_fg = hl.nav_icon_bg
      hl.folder_icon_bg = require("astronvim.utils").get_hlgroup("Error").fg
      return hl
    end,
    attributes = {
      mode = { bold = true },
    },
    icon_highlights = {
      file_icon = {
        statusline = false,
      },
    },
  },
  plugins = {
    -- override the heirline setup call
    heirline = function(config)
      -- the first element of the configuration table is the statusline
      config[1] = {
        -- default highlight for the entire statusline
        hl = { fg = "fg", bg = "bg" },
        -- each element following is a component in astronvim.status module

        -- add the vim mode component
        astronvim.status.component.mode {
          -- enable mode text with padding as well as an icon before it
          mode_text = { icon = { kind = "VimIcon", padding = { right = 1, left = 1 } } },
          -- surround the component with a separators
          surround = {
            -- it's a left element, so use the left separator
            separator = "left",
            -- set the color of the surrounding based on the current mode using astronvim.status module
            color = function() return { main = astronvim.status.hl.mode_bg(), right = "blank_bg" } end,
          },
        },
        -- we want an empty space here so we can use the component builder to make a new section with just an empty string
        astronvim.status.component.builder {
          { provider = "" },
          -- define the surrounding separator and colors to be used inside of the component
          -- and the color to the right of the separated out section
          surround = { separator = "left", color = { main = "blank_bg", right = "file_info_bg" } },
        },
        -- add a section for the currently opened file information
        astronvim.status.component.file_info {
          -- enable the file_icon and disable the highlighting based on filetype
          file_icon = { padding = { left = 0 } },
          filename = { fallback = "Empty" },
          -- add padding
          padding = { right = 1 },
          -- define the section separator
          surround = { separator = "left", condition = false },
        },
        -- add a component for the current git branch if it exists and use no separator for the sections
        astronvim.status.component.git_branch { surround = { separator = "none" } },
        -- add a component for the current git diff if it exists and use no separator for the sections
        astronvim.status.component.git_diff { padding = { left = 1 }, surround = { separator = "none" } },
        -- fill the rest of the statusline
        -- the elements after this will appear in the middle of the statusline
        astronvim.status.component.fill(),
        -- add a component to display if the LSP is loading, disable showing running client names, and use no separator
        astronvim.status.component.lsp { lsp_client_names = false, surround = { separator = "none", color = "bg" } },
        -- fill the rest of the statusline
        -- the elements after this will appear on the right of the statusline
        astronvim.status.component.fill(),
        -- add a component for the current diagnostics if it exists and use the right separator for the section
        astronvim.status.component.diagnostics { surround = { separator = "right" } },
        -- add a component to display LSP clients, disable showing LSP progress, and use the right separator
        astronvim.status.component.lsp { lsp_progress = false, surround = { separator = "right" } },
        -- NvChad has some nice icons to go along with information, so we can create a parent component to do this
        -- all of the children of this table will be treated together as a single component
        {
          -- define a simple component where the provider is just a folder icon
          astronvim.status.component.builder {
            -- astronvim.get_icon gets the user interface icon for a closed folder with a space after it
            { provider = astronvim.get_icon "FolderClosed" },
            -- add padding after icon
            padding = { right = 1 },
            -- set the foreground color to be used for the icon
            hl = { fg = "bg" },
            -- use the right separator and define the background color
            surround = { separator = "right", color = "folder_icon_bg" },
          },
          -- add a file information component and only show the current working directory name
          astronvim.status.component.file_info {
            -- we only want filename to be used and we can change the fname
            -- function to get the current working directory name
            filename = { fname = function(nr) return vim.fn.getcwd(nr) end, padding = { left = 1 } },
            -- disable all other elements of the file_info component
            file_icon = false,
            file_modified = false,
            file_read_only = false,
            -- use no separator for this part but define a background color
            surround = { separator = "none", color = "file_info_bg", condition = false },
          },
        },
        -- the final component of the NvChad statusline is the navigation section
        -- this is very similar to the previous current working directory section with the icon
        { -- make nav section with icon border
          -- define a custom component with just a file icon
          astronvim.status.component.builder {
            { provider = astronvim.get_icon "ScrollText" },
            -- add padding after icon
            padding = { right = 1 },
            -- set the icon foreground
            hl = { fg = "bg" },
            -- use the right separator and define the background color
            -- as well as the color to the left of the separator
            surround = { separator = "right", color = { main = "nav_icon_bg", left = "file_info_bg" } },
          },
          -- add a navigation component and just display the percentage of progress in the file
          astronvim.status.component.nav {
            -- add some padding for the percentage provider
            percentage = { padding = { right = 1 } },
            -- disable all other providers
            ruler = false,
            scrollbar = false,
            -- use no separator and define the background color
            surround = { separator = "none", color = "file_info_bg" },
          },
        },
      }

      -- a second element in the heirline setup would override the winbar
      -- by only providing a single element we will only override the statusline
      -- and use the default winbar in AstroNvim

      -- return the final configuration table
      return config
    end,
  },

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
