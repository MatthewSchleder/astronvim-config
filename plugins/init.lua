return {
  ["NTBBloodBath/doom-one.nvim"] = {
    setup = require('user.plugins.add-on.doom-one').setup,
    config = require('user.plugins.add-on.doom-one').config,
  },
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
}
