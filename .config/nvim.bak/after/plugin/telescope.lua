local status, telescope = pcall(require, 'telescope')

if (not status) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["d"] = "delete_buffer",
        ["<Enter>"] = actions.select_tab_drop,
        ["<C-space>"] = actions.select_default,
      },
      i = {
        ["<C-d>"] = "delete_buffer",
        ["<Enter>"] = actions.select_tab_drop,
        ["<C-space>"] = actions.select_default,
      }
    },
    file_ignore_patterns = {
      "node_modules", ".git", ".next"
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = "[/] Fuzzy Find in current buffer" })

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = "[L]ive [G]rep" })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = "[S]how [D]iagnostics" })
vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = "[T]elescope [B]uffers" })
vim.keymap.set('n', '<leader>tj', builtin.jumplist, { desc = "[T]elescope [J]umplist" })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>;s', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set("n", "<leader>fb", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = true,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end, { desc = "[F]ile [B]rowser" })
