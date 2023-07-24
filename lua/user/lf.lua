require("lf").setup{
  default_cmd = "lf",           -- default `lf` command
  default_action = "edit",      -- default action when `Lf` opens a file
  default_actions = {           -- default action keybindings
    ["<C-t>"] = "tabedit",
    ["<C-x>"] = "split",
    ["<C-v>"] = "vsplit",
    ["<C-o>"] = "tab drop",
  },

  winblend = 10,                -- psuedotransparency level
  dir = "",                     -- "" is CWD, "gwd" is Git-WD
  direction = "float",          -- window type: float horizontal vertical
  border = "rounded",           -- single/double/shadow/curved/rounded
  height = 45,                  -- height of the *floating* window
  width = 180,                  -- width of the *floating* window
  escape_quit = true,           -- map <esc> to the quit command
  focus_on_open = false,        -- focus current file when opening Lf (experimental)
  mappings = true,  -- whether terminal buffer mapping is enabled
  tmux = false,     -- keep tmux statusline on opening of Lf
}

-- reassign <leader>e to lf file manager
lvim.builtin.which_key.mappings["e"] = {}
lvim.builtin.which_key.mappings["e"] = { ":Lf<CR>", "Lf explorer" }
