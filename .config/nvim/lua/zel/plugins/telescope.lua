return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                          , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local status, telescope = pcall(require, 'telescope')

    if (not status) then return end

    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')

    local function telescope_buffer_dir()
      return vim.fn.expand('%:p:h')
    end

    telescope.setup {
      defaults = {
        prompt_prefix = "❯ ",
        selection_caret = " ❯ ",
        mappings = {
          n = {
            ["q"] = actions.close,
            ["d"] = "delete_buffer",
            ["<Enter>"] = actions.select_tab,
            -- ["<Enter>"] = actions.select_tab_drop,
            ["<C-space>"] = actions.select_default,
          },
          i = {
            ["<C-d>"] = "delete_buffer",
            -- ["<Enter>"] = actions.select_tab_drop,
            ["<Enter>"] = actions.select_tab,
            ["<C-space>"] = actions.select_default,
          }
        },
        file_ignore_patterns = {
          "node_modules", ".git", ".next", "package%-lock.json"
        }
      },
    }

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
  end
}
