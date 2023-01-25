return function(config) -- overrides `require("null-ls").setup(config)`

  -- config variable is the default configuration table for the setup function call
  local null_ls = require "null-ls"

  -- Check supported formatters and linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  config.sources = {
    -- Set a formatter
    null_ls.builtins.formatting.black.with({ extra_args = { "--fast" }}),
    null_ls.builtins.formatting.isort,
    -- Set diagnostics
    null_ls.builtins.diagnostics.flake8.with({ extra_args = { "--max-line-length", "120", "--ignore=D100" }}),
    null_ls.builtins.diagnostics.pylint.with({ extra_args = { "--max-line-length", "120", "--disable=C0114" }}),
  }
  return config -- return final config table
end
 
