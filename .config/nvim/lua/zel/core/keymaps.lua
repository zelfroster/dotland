vim.g.mapleader = " "
vim.g.maplocalleader = " "

local k = vim.keymap
local opts = { noremap = true, silent = true }
local function o(desc)
	return vim.tbl_extend("force", {}, opts, { desc = desc })
end

k.set("n", "<Esc>", ":nohl<CR>", o("Clear search highlights"))
k.set("n", "<C-s>", ":w<CR>", o("Save file"))

-- Buffers
k.set("n", "H", ":bprevious<CR>", o("Buffer previous"))
k.set("n", "L", ":bnext<CR>", o("Buffer next"))
k.set("n", "<leader>bd", ":bd<CR>", o("[B]uffer [D]elete"))
k.set("n", "<leader>bn", ":bnext<CR>", o("[B]uffer [N]ext"))
k.set("n", "<leader>bp", ":bprevious<CR>", o("[B]uffer [P]revious"))

-- Tabs
k.set("n", "te", ":tabe<Return>", o("New tab"))

-- Increment / decrement
k.set("n", "+", "<C-a>", o("Increment number"))
k.set("n", "-", "<C-x>", o("Decrement number"))

-- Select all
k.set("n", "<C-a>", "gg<S-v>G", o("Select all"))

-- Visual line movement
k.set("v", "J", ":m '>+1<CR>gv=gv", o("Move selection down"))
k.set("v", "K", ":m '<-2<CR>gv=gv", o("Move selection up"))

-- Centered scrolling / search
k.set("n", "<C-d>", "<C-d>zz", o("Scroll down (centered)"))
k.set("n", "<C-u>", "<C-u>zz", o("Scroll up (centered)"))
k.set("n", "n", "nzzzv", o("Next match (centered)"))
k.set("n", "N", "Nzzzv", o("Prev match (centered)"))

-- Splits
k.set("n", "<leader>sv", ":vsplit<Return><C-w>w", o("Split vertically"))
k.set("n", "<leader>sh", ":split<Return><C-w>w", o("Split horizontally"))

-- Window navigation
k.set("n", "<leader><Space>", "<C-w>w", o("Cycle windows"))
k.set("n", "<leader>gh", "<C-w>h", o("Go to left window"))
k.set("n", "<leader>gj", "<C-w>j", o("Go to down window"))
k.set("n", "<leader>gk", "<C-w>k", o("Go to up window"))
k.set("n", "<leader>gl", "<C-w>l", o("Go to right window"))

-- Resize windows
k.set("n", "<leader>ch", "10<C-w><", o("Resize left"))
k.set("n", "<leader>cl", "10<C-w>>", o("Resize right"))
k.set("n", "<leader>ck", "10<C-w>+", o("Resize up"))
k.set("n", "<leader>cj", "10<C-w>-", o("Resize down"))

-- Clipboard helpers
k.set("n", "<leader>p", '"0p', o("Paste without overwriting register"))

-- Escape
k.set("i", "<C-c>", "<Esc>", o("Escape insert mode"))
k.set("n", "Q", "<nop>", o("Disable Q"))

-- NeoTree
k.set("n", "<C-f>", function()
	for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].filetype == "neo-tree" then
			vim.api.nvim_set_current_win(win)
			return
		end
	end
	vim.cmd("Neotree toggle")
end, o("Toggle NeoTree"))

-- Format
k.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end, o("Format buffer"))

-- Diagnostics
k.set("n", "<C-k>", function() vim.diagnostic.goto_prev() end, o("Previous diagnostic"))
k.set("n", "<C-j>", function() vim.diagnostic.goto_next() end, o("Next diagnostic"))
k.set("n", "<leader>k", "<cmd>lnext<CR>zz", o("Location list next"))
k.set("n", "<leader>j", "<cmd>lprev<CR>zz", o("Location list prev"))
k.set("n", "<leader>q", vim.diagnostic.setloclist, o("Open diagnostic quickfix"))

-- Search and replace word under cursor
k.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", o("Replace word"))

-- File utilities
k.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", o("Make file executable"))
k.set("n", "<leader>cap", ":let @+=expand('%:p')<CR>", o("Copy absolute path"))
k.set("n", "<leader>cp", ":let @+=expand('%:p:~:.')<CR>", o("Copy relative path"))

-- Misc
k.set("n", "<leader>u", vim.cmd.UndotreeToggle, o("Toggle UndoTree"))
k.set("n", "<leader>lz", ":Lazy<CR>", o("Lazy"))
k.set("", "<F9>", ":!g++ -o %< % && ./%< <CR>", o("Compile and run C++"))
