return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		auto_restore = false,
		log_level = "warn",
		suppressed_dirs = { "~/dl", "~/", "~/pix", "~/dox", "~/vid" },
	},
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>wsf", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>wss", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>wsr", "<cmd>SessionRestore<CR>", desc = "Restore session" },
		{ "<leader>wsa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
	},
	-- config = function()
	-- 	vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	-- end,
}
