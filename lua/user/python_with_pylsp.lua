lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-------------------------------------
-- set up linter and formatter
-- flake8 extend-ignore: https://stackoverflow.com/a/73569444/9070040
-------------------------------------
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { {
  command = "flake8",
  args = { "--max-line-length=100", "--extend-ignore=E402,F401,W503" },
  filetypes = { "python" }
} }
-- linters.setup { { command = "pylint", filetypes = { "python" } } }  -- buggy

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black", args = { "--line-length=100" } },
  { name = "isort", args = { "--profile=black" } },
}

lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py" }  -- disable for all file types

-------------------------------------------------------
-- replace pyright by python-lsp-server (pylsp)
-- DO NOT FORGET to run :LvimCacheReset after switching
-------------------------------------------------------
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "pylsp"
end, lvim.lsp.automatic_configuration.skipped_servers)
