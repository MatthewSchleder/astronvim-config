return {
  ["kkoomen/vim-doge"] = {
    run = ":call doge#install()",
    setup = require('user.plugins.add-on.doge'),
  },
  ["nvim-orgmode/orgmode"] = {
    config = require('user.plugins.add-on.org'),
  },
  ["folke/trouble.nvim"] = {
    requires = "nvim-tree/nvim-web-devicons",
    config = require('user.plugins.add-on.trouble'),
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  ["folke/tokyonight.nvim"] = {
    config = require("tokyonight").setup {
      style = "moon"
    }
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    config = require('user.plugins.add-on.telescope')
  },
}
