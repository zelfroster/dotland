return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			log_level = "warn",
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/dl", "~/", "~/pix", "~/dox", "~/vid" },
			-- auto_session_enabled = true,
		})

		local k = vim.keymap

		k.set("n", "<leader>rs", "<cmd>SessionRestore<CR>", { desc = "Restore Session" })
		k.set("n", "<leader>ws", "<cmd>SessionRestore<CR>", { desc = "Save Session" })
	end,
}
