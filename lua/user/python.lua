--------------------------------------------------
--------------------------------------------------
-- config for python
--------------------------------------------------
--------------------------------------------------
-- make sure treesitter for python is installed
lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-------------------------------------------------------------------------------
-- set up linter and formatter (first mason-install "black", "isort", "flake8")
-- flake8 extend-ignore: https://stackoverflow.com/a/73569444/9070040
-------------------------------------------------------------------------------
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
lvim.format_on_save.pattern = { "*.py" }  -- comment this line to save all file types

-------------------------------------
-- set up language server (pyright)
-------------------------------------
-- https://medium.com/@chrisatmachine/lunarvim-advanced-pyright-lsp-configuration-usage-665a14decb77
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
local pyright_opts = {
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,  -- needed to look up function definition
      disableOrganizeImports = true
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly", -- openFilesOnly, workspace
        diagnosticSeverityOverrides = {
          -- reportGeneralTypeIssues = false,
          reportUnusedImport = false,
        },
        extraPaths = "/home/roy/Projects/Libs",
        typeCheckingMode = "basic", -- off, basic, strict
        useLibraryCodeForTypes = false  -- disables function definition lookup!
      }
    }
  },
}
require("lvim.lsp.manager").setup("pyright", pyright_opts)

----------------------------------------------------
-- set up dap-python (first mason-install "debugpy")
----------------------------------------------------
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)

--------------------------------------
-- set up python env switcher (swenv)
--------------------------------------
require('swenv').setup{
  venvs_path = vim.fn.expand('~/.local/share/virtualenvs'),  -- pipenv path 
  post_set_venv = function()
    vim.cmd('LspRestart')   -- restart lsp after switching venv
  end,
}

-- keybinding
lvim.builtin.which_key.mappings["V"] = {
  "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Python Env"
}
