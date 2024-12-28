-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local k = vim.keymap
local opts = { noremap = true, silent = true }

-- Open Netrw
k.set("n", "<leader>sn", vim.cmd.Ex, { desc = "Open Netrw" })

-- Clear search highlights
k.set("n", "<Esc>", ":nohl<CR>", { noremap = true, silent = true, desc = "Clear search highlights" })

k.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save File" })

-- buffer mappings
-- k.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
-- k.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})maps
k.set("n", "<leader>bd", ":bd<CR>", { desc = "Buffer delete" })
k.set("n", "<leader>bn", ":bnext<CR>", { desc = "Buffer next" })
k.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Buffer previous" })

-- tab mappings
k.set("n", "L", "gt")
k.set("n", "H", "gT")
k.set("n", "gt", "gt")
k.set("n", "gT", "gT")

-- Increment/Decrement
k.set("n", "+", "<C-a>", { desc = "Increment number" })
k.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- Select all
k.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- New tab
k.set("n", "te", ":tabe<Return>", { noremap = true, silent = true, desc = "New tab" })

-- Move selected text up and down
k.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected text up" })
k.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected text down" })

-- Append the next Line to the current line
k.set("n", "<leader>j", "mzJ`z")

-- Movements with cursor always in center
k.set("n", "<C-d>", "<C-d>zz")
k.set("n", "<C-u>", "<C-u>zz")
k.set("n", "n", "nzzzv")
k.set("n", "N", "Nzzzv")

k.set("n", "<leader>sv", ":vsplit<Return><C-w>w", opts)
k.set("n", "<leader>ss", ":split<Return><C-w>w", opts)

-- Window movements
k.set("n", "<leader><Space>", "<C-w>w") -- Cycle through windows
k.set("n", "<leader>gh", "<C-w>h") -- Go to left window
k.set("n", "<leader>gj", "<C-w>j") -- Go to down window
k.set("n", "<leader>gk", "<C-w>k") -- Go to up window
k.set("n", "<leader>gl", "<C-w>l") -- Go to right window

-- Resize window by 10 units
k.set("n", "<leader>ch", "10<C-w><")
k.set("n", "<leader>cl", "10<C-w>>")
k.set("n", "<leader>ck", "10<C-w>+")
k.set("n", "<leader>cj", "10<C-w>-")

-- Greatest remap ever
-- k.set("n", "<leader>p", '"_dP')
k.set("n", "<leader>p", '"0p')

-- next greatest remap ever : asbjornHaland
-- k.set("n", "<leader>y", '"+y')
-- k.set("v", "<leader>y", '"+y')
-- k.set("n", "<leader>Y", '"+Y')
--
k.set("n", "<leader>d", '"_d')
k.set("v", "<leader>d", '"_d')

-- Map Control-C to ESC
k.set("i", "<C-c>", "<Esc>")

k.set("n", "Q", "<nop>") -- don't know what it does

k.set("n", "<C-f>", ":Neotree toggle<CR>", opts) -- Toggle NeoTree
-- k.set("n", "<C-f>", ":Lex! 20<CR>", opts) -- Toggle NeoTree

k.set("n", "<leader>f", function()
	vim.lsp.buf.format() -- format using default lsp
end)

-- Diagnostics
k.set("n", "<C-k>", function()
	vim.diagnostic.goto_prev()
end, opts)
k.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

-- k.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- k.set("n", "<C-j>", "<cmd>cprev<CR>zz")
k.set("n", "<leader>k", "<cmd>lnext<CR>zz")
k.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Leader-r to rename
k.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Leader-x to make file executable
k.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- A fun thing to do
-- k.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { silent = true })

-- Compile and Run C Program
k.set("", "<F9>", ":!g++ -o %< % && ./%< <CR>")

-- Toggle UndoTree
k.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- LAZYVIM mappings
-- floating terminal
-- local Util = require("lazyvim.util")
-- local lazyterm = function()
--   Util.terminal(nil, { cwd = Util.root() })
-- end
-- k.set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
-- k.set("n", "<leader>fT", function()
--   Util.terminal()
-- end, { desc = "Terminal (cwd)" })
-- k.set("n", "<c-`>", lazyterm, { desc = "Terminal (root dir)" })
-- k.set("t", "<c-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- k.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

-- lazy
k.set("n", "<leader>lz", ":Lazy<CR>", { desc = "Lazy" })

-- telescope
-- local builtin = require("telescope.builtin")
-- k.set("<leader>sf", function() builtin.find_files({ no_ignore = false, hidden = true, }) end, { desc = "Search Files" })
-- k.set("<leader>lg", builtin.live_grep, { desc = "Live Grep" })
-- k.set("<leader>sd", builtin.diagnostics, { desc = "Show Diagnostics" })
-- k.set("<leader>?", builtin.oldfiles, { desc = "Find recently opened files" })
-- k.set("<leader>tj", builtin.jumplist, { desc = "Telescope Jumplist" })
-- k.set("<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy Find in current buffer" })
-- k.set("<leader>gf", builtin.git_files, { desc = "Search Git Files" })

-- Diagnostic keymaps
k.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
