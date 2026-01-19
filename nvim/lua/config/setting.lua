vim.cmd("set number")
vim.cmd("set nocursorline")
vim.cmd("set nocursorcolumn")
vim.cmd("set cc=80")
vim.cmd("set mouse=")
vim.cmd([[colorscheme teide-dark]])
-- enabling and setting for nvim-lualine
require('lualine').setup()
vim.opt.undofile = true
