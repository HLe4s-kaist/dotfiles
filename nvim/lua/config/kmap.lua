-- Toggle Nvim Tree <C-N>
local nvimtree = require("nvim-tree.api")
local nvimtree_open_toggle = false
local function toggle_nvimtree()
	if nvimtree_open_toggle then
		nvimtree_open_toggle = false
		nvimtree.tree.close()
	else
		nvimtree_open_toggle = true
		nvimtree.tree.open()
	end
end
vim.keymap.set("n", "<C-n>", toggle_nvimtree)

-- Window Traverse <C-h>, <C-j>, <C-k>, <C-l>
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {silent = true})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {silent = true})
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {silent = true})
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {silent = true})

-- Tab Traverse <tab> <shift><tab>
vim.keymap.set("n", "<tab>", "gt", {silent = true})
vim.keymap.set("n", "<S-tab>", "gT", {silent = true})

-- Toggle line number
local line_number_toggle = true
vim.keymap.set("n", "<space>n", function()
	if line_number_toggle then
		vim.cmd('set nonumber')
		line_number_toggle = false
	else
		vim.cmd('set number')
		line_number_toggle = true
	end
end, {silent = true})

-- Toggle cursor highlight
local cursor_highlight_toggle = false
vim.keymap.set("n", "<C-c>", function()
	if cursor_highlight_toggle then
		vim.cmd('set nocursorline')
		vim.cmd('set nocursorcolumn')
		cursor_highlight_toggle = false
	else
		vim.cmd('set cursorline')
		vim.cmd('set cursorcolumn')
		cursor_highlight_toggle = true
	end
end, {silent = true})

-- FZF livegrep 
require("fzf-lua")
vim.keymap.set("n", "<space>fw", ":FzfLua live_grep<CR>", {silent = true})

-- LSP keymap on LspAttach
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method('textDocument/deifinition') then
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    end
    --vim.keymap.set('i', '<c-space>', function()
    --    	vim.lsp.completion.get()
    --end)
    --if client:supports_method('textDocument/diagnostic') then
    --        vim.keymap.set("n", "<c-d>n", vim.definition.get_next())
    --        vim.keymap.set("n", "<c-d>p", vim.definition.get_prev())
    --end
  end,
})
