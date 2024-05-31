require("zel.base")
require("zel.maps")
require("zel.autocmd")

-- Install lazy.nvim automatically if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugins --
require("lazy").setup({ import = "zel.plugins" })

-- Apply Colorscheme
vim.cmd([[colorscheme everforest]])
