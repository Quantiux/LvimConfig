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
