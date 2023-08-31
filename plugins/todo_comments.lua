-- Can specify keywords like TODO, HACK, WARN, PERF, NOTE, and TEST in
-- comments and will go ahead and highlight these lines in bright colors
-- to easily identify
-- TODO: example
-- HACK: example
-- WARN: example
-- PERF: example
-- NOTE: example
-- TEST: example
return {
  { "folke/todo-comments.nvim", opts = {}, event = "User AstroFile" },
}
