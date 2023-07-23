-- create Find key group
lvim.builtin.which_key.mappings["f"] = {}   -- remove existing which keybinding
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  f = { "<cmd>lua require('telescope.builtin').find_files()<CR>", "Find file in current folder" },
  p = { "<cmd>Telescope find_files cwd=~/Projects<CR>", "Find file in Projects folder" },
  n = { "<cmd>Telescope find_files cwd=~/Documents/Notes<CR>", "Find file in Notes folder" },
  c = { "<cmd>Telescope find_files cwd=~/.config<CR>", "Find file in Config folder" },
  h = { "<cmd>Telescope find_files cwd=~<CR>", "Find file in Home folder" },
  F = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Live grep in current folder" },
  P = { "<cmd>Telescope live_grep cwd=~/Projects<CR>", "Live grep in Projects folder" },
  N = { "<cmd>Telescope live_grep cwd=~/Documents/Notes<CR>", "Live grep in Notes folder" },
  C = { "<cmd>Telescope live_grep cwd=~/.config<CR>", "Live grep in Config folder" },
  H = { "<cmd>Telescope live_grep cwd=~<CR>", "Live grep in Home folder" },
}

-- redefine plugin management key group
lvim.builtin.which_key.mappings["p"] = {}
lvim.builtin.which_key.mappings["p"] = {
  name = "Plugins",
  i = { "<cmd>Lazy install<cr>", "Install" },
  s = { "<cmd>Lazy sync<cr>", "Sync" },
  S = { "<cmd>Lazy clear<cr>", "Status" },
  c = { "<cmd>Lazy clean<cr>", "Clean" },
  u = { "<cmd>Lazy update<cr>", "Update" },
  p = { "<cmd>Lazy profile<cr>", "Profile" },
  l = { "<cmd>Lazy log<cr>", "Log" },
  d = { "<cmd>Lazy debug<cr>", "Debug" },
}

-- REPL keybindings
lvim.builtin.which_key.vmappings["v"] = {
  ":ToggleTermSendVisualLines<CR>", "Run selected code block"
}
