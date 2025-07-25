-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")
require("plugins")
require("keymaps")
require("lsp")
require("treesitter")
require("telescope_config")

vim.cmd("colorscheme tokyonight")

