vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move selected Text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Remap C-c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")
-- When moving the page, auto center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Center when finding words
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Dumps selected text when pasting
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Removes Q functionality
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- New Blank Line
vim.keymap.set("n", "<leader>o", "o<esc>0d$");
vim.keymap.set("n", "<leader>O", "O<esc>0d$");

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Source File
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Code actions
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>K', '<cmd>lua vim.lsp.buf.code_action()<CR>')

local flash = require('flash')
-- Keybindings for Flash
vim.keymap.set({ 'n', 'x', 'o' }, 's', function() flash.jump() end, { desc = "Flash" })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', function() flash.treesitter() end, { desc = "Flash Treesitter" })
vim.keymap.set('o', 'r', function() flash.remote() end, { desc = "Remote Flash" })
vim.keymap.set({ 'o', 'x' }, 'R', function() flash.treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set('c', '<C-s>', function() flash.toggle() end, { desc = "Toggle Flash Search" })

-- Debug
vim.keymap.set('n', '<F5>', function() require 'dap'.continue() end, { desc = "Start debug" })
vim.keymap.set('n', '<F4>', '', { noremap = true })
vim.keymap.set('n', '<F4>', function() require 'dap'.toggle_breakpoint() end, { desc = "Toggle a breakpoint" })
