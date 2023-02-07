local mappings = {}

mappings.n = {
  -- disable default bindings
  ["<leader>e"] = false,
  ["<leader>o"] = false,

  -- navigate explorer
  ["<leader>ef"] = { "<cmd>Neotree focus<cr>", desc = "Focus Explorer"},
  ["<leader>et"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer"},

  -- navigating buffers and tabs
  ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
  ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
  ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
  ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

  -- https://github.com/seqizz/jb
  ["<leader>tj"] = { function() astronvim.toggle_term_cmd "jb" end, desc = "ToggleTerm jb" },
}

return mappings
