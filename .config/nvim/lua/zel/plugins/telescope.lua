return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				-- path_display = { "smart" },
				prompt_prefix = "❯ ",
				selection_caret = "❯ ",
				mappings = {
					n = {
						["q"] = actions.close,
						["d"] = "delete_buffer",
						["<Enter>"] = actions.select_tab_drop,
						["<C-space>"] = actions.select_default,
						["<leader>sf"] = builtin.find_files,
					},
					i = {
						["<C-d>"] = "delete_buffer",
						["<Enter>"] = actions.select_tab_drop,
						["<C-space>"] = actions.select_default,
					},
				},
				file_ignore_patterns = {
					"node_modules",
					".git",
					".next",
					"package%-lock.json",
					"env",
					"__pycache__",
				},
			},
		})

		telescope.load_extension("fzf")

		--set keymaps
		local k = vim.keymap

		k.set("n", "<leader>sf", function()
			builtin.find_files({ no_ignore = false, hidden = true })
		end, { desc = "Search Files" })
		k.set("n", "<leader>lg", builtin.live_grep, { desc = "Live Grep" })
		k.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
		k.set("n", "<leader>sd", builtin.diagnostics, { desc = "Show Diagnostics" })
		k.set("n", "<leader>?", builtin.oldfiles, { desc = "Find recently opened files" })
		k.set("n", "<leader>tj", builtin.jumplist, { desc = "Telescope Jumplist" })
		k.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy Find in current buffer" })
		k.set("n", "<leader>gf", builtin.git_files, { desc = "Search Git Files" })
	end,
	-- keys = {
	--   {
	--     "<leader>sf",
	--     function()
	--       require("telescope.builtin").find_files({
	--         no_ignore = false,
	--         hidden = true,
	--       })
	--     end,
	--     { desc = "Search Files" },
	--   },
	--   {
	--     "<leader>lg",
	--     require("telescope.builtin").live_grep,
	--     { desc = "Live Grep" },
	--   },
	--   {
	--     "<leader>sd",
	--     require("telescope.builtin").diagnostics,
	--     { desc = "Show Diagnostics" },
	--   },
	--   {
	--     "<leader>?",
	--     require("telescope.builtin").oldfiles,
	--     { desc = "Find recently opened files" },
	--   },
	--   {
	--     "<leader>tj",
	--     require("telescope.builtin").jumplist,
	--     { desc = "Telescope Jumplist" },
	--   },
	--   {
	--     "<leader>/",
	--     require("telescope.builtin").current_buffer_fuzzy_find,
	--     { desc = "Fuzzy Find in current buffer" },
	--   },
	--   {
	--     "<leader>gf",
	--     require("telescope.builtin").git_files,
	--     { desc = "Search Git Files" },
	--   },
	-- },
}

-- opts = {
--   defaults = {
--     prompt_prefix = "❯ ",
--     selection_caret = " ❯ ",
--     mappings = {
--       n = {
--         ["q"] = require("telescope.actions").close,
--         ["d"] = "delete_buffer",
--         ["<Enter>"] = require("telescope.actions").select_tab_drop,
--         ["<C-space>"] = require("telescope.actions").select_default,
--       },
--       i = {
--         ["<C-d>"] = "delete_buffer",
--         ["<Enter>"] = require("telescope.actions").select_tab_drop,
--         ["<C-space>"] = require("telescope.actions").select_default,
--       },
--     },
--     file_ignore_patterns = {
--       "node_modules",
--       ".git",
--       ".next",
--       "package%-lock.json",
--       "env",
--       "__pycache__",
--     },
--   },
-- },
