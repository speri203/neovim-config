-- Configure Everblush

require("everblush").setup {
  override = { -- fixing some colours tbh
    VertSplit = { -- less ugly imo
      -- fg = '#0f1517',
      fg = "#0e1316",
      bg = "#141b1e",
    },
    StatusLine = {
      bg = "#0e1316",
    },
    Cursor = {
      bg = "#aabbc3",
      -- blend = 60,
    },

    -- LSPSaga
    LspSagaRenameBorder = {
      bg = "#11171a",
    },

    -- -- Cmp Menu tweaks
    -- TODO: fix this shit please the current dropdowns so terrible
    -- CmpItemAbbr = {
    -- 	fg = "#dadada",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemKind = {
    -- 	fg = "#67b0e8",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemMenu = {
    -- 	fg = "#8ccf7e",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrMatch = {
    -- 	fg = "#b3b9b8",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrDefault = {
    -- 	fg = "#dadada",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrDeprecated = {
    -- 	fg = "#dadada",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrMatchFuzzy = {
    -- 	fg = "#b3b9b8",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemMenuDefault = {
    -- 	fg = "#dadada",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemKindDefault = {
    -- 	fg = "#67b0e8",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrMatchDefault = {
    -- 	fg = "#b3b9b8",
    -- 	bg = '#0e1316',
    -- },
    -- CmpItemAbbrMatchFuzzyDefault = {
    -- 	fg = "#b3b9b8",
    -- 	bg = '#0e1316',
    -- },

    -- Telescope customizations
    TelescopeNormal = {
      bg = "#171f23",
      -- fg = "#1c262b",
    },
    TelescopeBorder = {
      bg = "#171f23",
      fg = "#171f23",
    },
    TelescopePromptNormal = {
      bg = "#1e292e",
    },
    TelescopePromptBorder = {
      bg = "#1e292e",
      fg = "#1e292e",
    },
    TelescopePromptTitle = {
      bg = "#1e292e",
    },
    TelescopeResultsTitle = {
      fg = "#5a6568",
    },
    TelescopeSelection = {
      bg = "#1f2b30",
      fg = "#ffffff",
    },
    TelescopePreviewNormal = {
      bg = "#11171a",
    },
    TelescopePreviewBorder = {
      bg = "#11171a",
      fg = "#11171a",
    },
    TelescopePreviewTitle = {
      bg = "#11171a",
      fg = "#5a6568",
    },

    NeoTreeCursorLine = {
      -- fg = '#ffffff',
      bg = "#11171a",
    },
    NeoTreeNormal = {
      -- fg = '#0e1316',
      bg = "#0e1316",
    },
    NeoTreeNormalNC = {
      -- fg = '#0e1316',
      bg = "#0e1316",
    },
    NeoTreeSignColumn = {
      fg = "#0e1316",
      bg = "#0e1316",
    },
    NeoTreeVertSplit = {
      fg = "#141b1e",
      bg = "#141b1e",
    },
    NeoTreeWinSeparator = {
      fg = "#141b1e",
      bg = "#141b1e",
    },
    NeoTreeFileIcon = {
      fg = "#0e1316",
      -- bg = '#0e1316'
    },

    FloatBorder = {
      fg = "#141b1e",
    },

    TSModuleInfo = {
      bg = "#182024",
    },
    WhichKeyFloat = {
      bg = "#11171a",
    },
    WhichKeyBorder = {
      bg = "#11171a",
    },
  },

  transparent_background = false,
  nvim_tree = {
    contrast = true,
  },
}

vim.cmd [[ 
	highlight! link NeoTreeDirectoryName NvimTreeFolderName
	highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
	highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
	highlight! link NeoTreeRootName NvimTreeRootFolder
	highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
	highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
]] -- shoehorn nvim-tree support into neotree support idk
