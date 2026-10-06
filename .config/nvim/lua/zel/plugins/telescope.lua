return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({
			extensions = {
				["ui-select"] = { require("telescope.themes").get_dropdown() },
			},
			defaults = {
				prompt_prefix = "❯ ",
				selection_caret = "❯ ",
				mappings = {
					n = {
						["q"] = actions.close,
						["d"] = "delete_buffer",
						["<Enter>"] = actions.select_default,
						["<C-space>"] = actions.select_default,
					},
					i = {
						["<C-d>"] = "delete_buffer",
						["<Enter>"] = actions.select_default,
						["<C-space>"] = actions.select_default,
					},
				},
				file_ignore_patterns = { ".git", "package%-lock.json", "__pycache__" },
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")

		local k = vim.keymap
		k.set("n", "<leader>sf", function() builtin.find_files({ no_ignore = false, hidden = true }) end, { desc = "[S]earch [F]iles" })
		k.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		k.set("n", "<leader>lg", builtin.live_grep, { desc = "[L]ive [G]rep" })
		k.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch [W]ord" })
		k.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		k.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		k.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		k.set("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent" })
		k.set("n", "<leader>tj", builtin.jumplist, { desc = "Jumplist" })
		k.set("n", "<leader>sg", builtin.git_files, { desc = "[S]earch [G]it Files" })
		k.set("n", "<leader><leader>", builtin.buffers, { desc = "Find buffers" })
		k.set("n", "<leader>sn", function() builtin.find_files({ cwd = vim.fn.stdpath("config") }) end, { desc = "[S]earch [N]vim config" })
		k.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({ winblend = 10, previewer = false }))
		end, { desc = "Fuzzy search buffer" })
		k.set("n", "<leader>s/", function()
			builtin.live_grep({ grep_open_files = true, prompt_title = "Live Grep in Open Files" })
		end, { desc = "[S]earch in open files" })
	end,
}
