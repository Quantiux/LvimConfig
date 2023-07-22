lvim.builtin.lualine.extensions = { "nvim-tree" }

local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_a = { "mode" }
-- lvim.builtin.lualine.sections.lualine_b = { "filename" }
lvim.builtin.lualine.sections.lualine_c = {
  components.diff,
  components.python_env,
  components.diagnostics
}
lvim.builtin.lualine.sections.lualine_x = {
  components.lsp,
  "filetype",
  -- components.spaces
}

-- lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
-- lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
