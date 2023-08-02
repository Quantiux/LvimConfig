local home = vim.fn.expand("$HOME")
require("chatgpt").setup{
  api_key_cmd = "gpg -d " .. home .. "/Documents/Keys/OpenaiAPI.txt.gpg",
  popup_layout = {
    default = "right",
    right = {
      width = "45%",
    }
  }
}

-- ChatGPT key bindings
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
