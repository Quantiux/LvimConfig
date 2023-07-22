-- add markdown language server marksman
require("lvim.lsp.manager").setup("marksman")

-- run markdown-preview
vim.fn["mkdp#util#install"]()

-- markdown-preview keymapping
lvim.keys.normal_mode["<C-s>"] = ":MarkdownPreview<CR>"
lvim.keys.normal_mode["<M-s>"] = ":MarkdownPreviewStop<CR>"
