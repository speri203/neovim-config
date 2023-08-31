-- Additional colum to the left of the line numbers that lets you add functionality
-- like folding portions of code (ex. if statements, functions, etc)
return {
  "luukvbaal/statuscol.nvim",
  lazy = true,
  event = "LspAttach",
  opts = {},
}
