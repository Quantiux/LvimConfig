-- Markdown preview key groups
lvim.builtin.which_key.mappings["m"] = {
  name = "Markdown",
  p = { "<cmd>MarkdownPreview<cr>", "Preview" },
  c = { "<cmd>MarkdownPreviewStop<cr>", "Close" },
}

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

-- reassign plugin management key group
lvim.builtin.which_key.mappings["p"] = {}
lvim.builtin.which_key.mappings["P"] = {
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

-- Projects management key
lvim.builtin.which_key.mappings["p"] = {
  "<cmd>Telescope projects<CR>", "Projects",
}

-- Sessions management
lvim.builtin.which_key.mappings["S"]= {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

-- ChatGPT
lvim.builtin.which_key.mappings["C"] = {
  name = "ChatGPT",
  c = { ":ChatGPT<cr>", "ChatGPT" },
  r1 = { ":ChatGPTRun explain_code<cr>", "Explain code" },
  r2 = { ":ChatGPTRun fix_bugs<cr>", "Fix bugs" },
  r3 = { ":ChatGPTRun optimize_code<cr>", "Optimize code" },
  r4 = { ":ChatGPTRun add_tests<cr>", "Add tests" },
  C = { ":ChatGPTCompleteCode<cr>", "CodeCompletion" },
  e = { ":ChatGPTEditWithInstructions<cr>", "Edit with instruction" },
  p = { ":ChatGPTActAs<cr>", "Roleplay" },
}

-- REPL keybindings
lvim.builtin.which_key.mappings["r"] = {
  ":RunCode<CR>", "Run code"
}
lvim.builtin.which_key.vmappings["v"] = {
  ":ToggleTermSendVisualLines<CR>", "Run selected code block"
}

-- reassign <leader>e to lf file manager
lvim.builtin.which_key.mappings["e"] = {}
lvim.builtin.which_key.mappings["e"] = {
  ":Lf<CR>", "lf explorer",
}
