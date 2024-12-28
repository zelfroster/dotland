return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { 'nvim-telescope/telescope-ui-select.nvim' },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
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
		telescope.load_extension("ui-select")

		--set keymaps
		local k = vim.keymap

		k.set("n", "<leader>sf", function()
			builtin.find_files({ no_ignore = false, hidden = true })
		end, { desc = "[S]earch [F]iles" })
    k.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
    k.set('n', '<leader>lg', builtin.live_grep, { desc = '[L]ive search by [G]rep' })
    k.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    k.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
		k.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    k.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
		k.set("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent Files ('.' for repeat)" })
		k.set("n", "<leader>tj", builtin.jumplist, { desc = "Telescope Jumplist" })
		k.set("n", "<leader>sg", builtin.git_files, { desc = "[S]earch [G]it Files" })
		k.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

    -- Slightly advanced example of overriding default behavior and theme
    k.set('n', '<leader>/', function()
      -- You can pass additional configuration to Telescope to change the theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- It's also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    vim.keymap.set('n', '<leader>s/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[S]earch [/] in Open Files' })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
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
