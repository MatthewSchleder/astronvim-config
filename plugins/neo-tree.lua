local function getTelescopeOpts(state, path)
  return {
    cwd = path,
    search_dirs = { path },
    attach_mappings = function (prompt_bufnr, map)
      local actions = require "telescope.actions"
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local action_state = require "telescope.actions.state"
        local selection = action_state.get_selected_entry()
        local filename = selection.filename
        if (filename == nil) then
          filename = selection[1]
        end
        -- any way to open the file without triggering auto-close event of neo-tree?
        require("neo-tree.sources.filesystem").navigate(state, state.path, filename)
      end)
      return true
    end
  }
end

return {
  close_if_last_window = true,
  enable_diagnostics = false,
  source_selector = {
    winbar = true,
    content_layout = "center",
    tab_labels = {
      filesystem = astronvim.get_icon "FolderClosed" .. " File",
      buffers = astronvim.get_icon "DefaultFile" .. " Bufs",
      git_status = astronvim.get_icon "Git" .. " Git",
      diagnostics = astronvim.get_icon "Diagnostic" .. " Diagnostic",
    },
  },
  default_component_configs = {
    indent = { padding = 0 },
    icon = {
      folder_closed = astronvim.get_icon "FolderClosed",
      folder_open = astronvim.get_icon "FolderOpen",
      folder_empty = astronvim.get_icon "FolderEmpty",
      default = astronvim.get_icon "DefaultFile",
    },
    git_status = {
      symbols = {
        added = astronvim.get_icon "GitAdd",
        deleted = astronvim.get_icon "GitDelete",
        modified = astronvim.get_icon "GitChange",
        renamed = astronvim.get_icon "GitRenamed",
        untracked = astronvim.get_icon "GitUntracked",
        ignored = astronvim.get_icon "GitIgnored",
        unstaged = astronvim.get_icon "GitUnstaged",
        staged = astronvim.get_icon "GitStaged",
        conflict = astronvim.get_icon "GitConflict",
      },
    },
  },
  window = {
    width = 30,
    mappings = {
      ["<space>"] = false, -- disable space until we figure out which-key disabling
      o = "open",
      H = "prev_source",
      L = "next_source",
    },
  },
  filesystem = {
    follow_current_file = true,
    hijack_netrw_behavior = "open_current",
    use_libuv_file_watcher = true,
    window = {
      mappings = {
        O = "system_open",
        h = "toggle_hidden",
        ['/'] = "telescope_find",
        g = "telescope_grep",
      },
    },
    commands = {
      system_open = function(state) astronvim.system_open(state.tree:get_node():get_id()) end,
      telescope_find = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        require('telescope.builtin').find_files(getTelescopeOpts(state, path))
      end,
      telescope_grep = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        require('telescope.builtin').live_grep(getTelescopeOpts(state, path))
      end,
    },
  },
  event_handlers = {
    { event = "neo_tree_buffer_enter", handler = function(_) vim.opt_local.signcolumn = "auto" end },
  },

}
