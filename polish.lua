  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
return function()
  local current_win = vim.fn.win_getid()
  print(current_win)
  vim.api.nvim_create_augroup("neotree", {})
    vim.api.nvim_create_autocmd("UiEnter", {
      desc = "Open Neotree automatically",
      group = "neotree",
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd "Neotree toggle"
          local neotree_win = vim.fn.win_getid()
          print(neotree_win)
          vim.api.nvim_set_current_win(current_win)
        end
      end,
    })
end

