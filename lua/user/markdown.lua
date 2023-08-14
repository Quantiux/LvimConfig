-- add markdown language server marksman
require("lvim.lsp.manager").setup("marksman")

-- run markdown-preview
vim.fn["mkdp#util#install"]()

-- Markdown preview key groups
lvim.builtin.which_key.mappings["m"] = {
  name = "Markdown",
  p = { "<cmd>MarkdownPreview<cr>", "Preview" },
  c = { "<cmd>MarkdownPreviewStop<cr>", "Close" },
}
