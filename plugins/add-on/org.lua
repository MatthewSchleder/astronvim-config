local M = function()
  -- Load custom treesitter grammar for org filetype
  require('orgmode').setup_ts_grammar()

  -- Treesitter configuration
  require('nvim-treesitter.configs').setup {
    hightlight = {
      enable = true,
      additional_vim_regex_highlighting = {'org'},
    }
  }

  -- Confiugration org mode
  require('orgmode').setup {
    org_agenda_files = { '~/org/agenda/**/*'},
    org_default_notes_file = '~/org/notes/default.org',
  }
end

return M
