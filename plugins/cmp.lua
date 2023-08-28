local function has_words_before()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end
local kind_icons = {
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰡱",
  Constructor = "",
  Field = "󰜢",
  Variable = "",
  Class = "󰌗",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰊄",
}

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-calc",
    -- "hrsh7th/cmp-emoji",
    -- "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  opts = function(_, opts)
    local cmp = require "cmp"
    local luasnip = require "luasnip"
    local cmp_theme_config = require "user.plugins.cmp_theme.config"

    -- cmp_theme_config.gruvbox_baby()
    cmp_theme_config.nordictheme()

    return require("astronvim.utils").extend_tbl(opts, {
      view = {
        entries = { name = "custom", selection_order = "near_cursor" },
      },
      window = {
        documentation = {
          winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
        },
        completion = {
          col_offset = -3,
          side_padding = 1,
          winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
          border = "rounded",
          scrollbar = false,
        },
      },
      formatting = {
        -- fields = { "abbr", "kind", "menu" },
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local shorten_abbr = string.sub(vim_item.abbr, 1, 30)
          if shorten_abbr ~= vim_item.abbr then vim_item.abbr = shorten_abbr .. "..." end
          vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
          -- Source
          vim_item.menu = ({
            buffer = "[Buf]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[API]",
            cmp_tabnine = "[Tabnine]",
            path = "[Path]",
          })[entry.source.name]
          return vim_item
        end,
      },
      mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
        ["<C-j>"] = cmp.config.disable,
        ["<C-k>"] = cmp.config.disable,
      },
      sources = {
        -- { name = "nvim_lsp_signature_help" },
        {
          name = "nvim_lsp",
          priority = 1000,
        },
        -- { name = "codeium",  priority = 750 },
        { name = "luasnip", priority = 700 },
        { name = "path", priority = 650 },
        { name = "buffer", priority = 400 },
      },
    })
  end,
}
