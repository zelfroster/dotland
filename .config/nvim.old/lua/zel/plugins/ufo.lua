return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	event = "VeryLazy",
	config = function()
		vim.keymap.set("n", "zR", function()
			require("ufo").openAllFolds()
		end, { desc = "Open all folds" })
		vim.keymap.set("n", "zM", function()
			require("ufo").closeAllFolds()
		end, { desc = "Close all folds" })
		vim.keymap.set("n", "zK", function()
			local winid = require("ufo").peekFoldedLinesUnderCursor()
			if not winid then
				vim.lsp.buf.hover()
			end
		end, { desc = "Peek Fold" })
		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "lsp", "indent" } -- default provider
			end,
		})
	end,
}
