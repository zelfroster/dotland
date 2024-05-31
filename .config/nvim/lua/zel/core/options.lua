vim.cmd("let g:netrw_liststyle = 3")

-- local variable to ease some work
local o = vim.opt

-- Base
o.fillchars = { eob = " " } -- remove ~ symbol on blank lines
o.shell = "zsh" -- set default shell
o.mouse = "a" -- enable/disable mouse
o.scrolloff = 8 -- start scrolling when 8 lines from top or bottom
o.nu = true -- show line numbers
o.relativenumber = true -- show line numbers relative to the current line
-- o.backspace = "indent,eol,start"

-- Highlights
o.termguicolors = true -- enable true colors supported by terminal
o.cursorline = true -- highlight the line where cursor is located
o.cursorlineopt = "number" -- highlight only the number in cursorline
o.signcolumn = "yes" -- sign column always on
o.colorcolumn = "80" -- a vertical indicator line to act as a guide
o.background = "dark"

-- Encoding
o.encoding = "utf-8" -- set fileencoding to utf
vim.scriptencoding = "utf-8" -- set vim scripts encoding to utf
o.fileencoding = "utf-8" -- set encoding for normal files

-- TAB and Indentation
o.expandtab = true -- set tab to spaces
o.tabstop = 2 -- number of spaces in a tab
o.softtabstop = 2 -- number of spaces inserted when "TAB" key is pressed
o.shiftwidth = 2 -- number of spaces used for autoindenting
o.smarttab = true -- insert space or tabs depending on context
o.autoindent = true -- autoindent on
o.smartindent = true -- adjust the indent autmatically according to syntax

-- Fold and Wrap
o.foldmethod = "manual" -- manually create folds using 'z-f'
o.wrap = false -- no line wrapping

-- Split Direction
vim.o.splitbelow = true -- open horizontal split below
vim.o.splitright = true -- open vertical split right

-- Backup and Undo
-- o.swapfile = false -- disable swapfile
-- o.backup = false -- disable backupfile
o.undofile = true -- create undofile
o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir" -- undo location

-- Search
o.hlsearch = true -- do not highlight search results after searching
o.incsearch = true -- incremental search - search as typed
o.ignorecase = true -- case-insensitive search
o.smartcase = true

-- o.updatetime = 200

o.wildignore:append({ "*/node_modules/*" }) -- ignore node_modules
-- o.guicursor = "" -- same cursor as terminal

-- Keep system and nvim clipboard (copy and paste) in sync
o.clipboard:append({ "unnamedplus" })

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- vim.cmd([[
--   autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=500}
-- ]])
