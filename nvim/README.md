# nvim

This is nvim dotfiles which provide you functions below..

## Plugins

plugins are managed by [Lazy](https://github.com/folke/lazy.nvim).
If you use this configs, you will install plugins below.

1. Lazy : plugin manager
1. nvim-tree : file-system traverse
1. Telescope : livegrep, findfiles, etc
1. teide : colorscheme
1. lualine : status bottom line
1. alpha-nvim : nvim dashboard
1. nvim-cmp : auto-completion used with `cmp-path`, `nvim-lsp`(not teseted)
1. Quickmath : fast math calculation

## Key Mapping

1. \<C-j\>, \<C-h\>, \<C-k\>, \<C-l\> : traverse window
1. \<C-c\> : toggle highlight cursor
1. \<space\>n : toggle line number
1. \<space\>fw : telescope live grep
1. \<space\>ff : telescope find files
1. \<space\>bc : new buffer with quickmath

### LSP Key Mapping

1. gd : go to definition
1. grr : show all reference
1. \<C-w\>d : show diagnostic (warning or error)
1. ]d : go to next diagnostic (warning or error)
1. [d : go to prev diagnostic (warning or error)

## Supported LSP

1. clangd
1. lua-language-server
1. pylsp
