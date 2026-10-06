vim.g.netrw_banner = 0

local o = vim.opt

o.shell = "zsh"
o.mouse = "a"
o.scrolloff = 8
o.nu = true
o.relativenumber = true

o.termguicolors = true
o.cursorline = true
o.signcolumn = "yes"
o.colorcolumn = "80"
o.showmode = false
o.background = "dark"
o.fillchars = { eob = " ", fold = " " }

o.fileencoding = "utf-8"

o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.breakindent = true

o.foldenable = false
o.wrap = false

vim.o.splitbelow = true
vim.o.splitright = true

o.undofile = true
o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.updatetime = 250
o.timeoutlen = 300

o.wildignore:append({ "*/node_modules/*" })

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
