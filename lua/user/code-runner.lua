require("code_runner").setup{
  mode = "toggleterm",
  filetype = {
    python = "python3 -u",
  },
  term = {
    position = "bot",
    size = 17,
  },
}

-- keybinding
lvim.builtin.which_key.mappings["r"] = {
  ":RunCode<CR>", "Run code"
}
