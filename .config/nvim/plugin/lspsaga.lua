local status, saga = pcall(require, 'lspsaga')

if (not status) then return end

saga.setup({
  ui = {
    code_action = ''
  },
  lightbulb = {
    enable = true,
    enable_in_insert = true,
    sign = false,
    sign_priority = 40,
    virtual_text = true,
  },
  symbol_in_winbar = {
    enable = true,
    separator = "  ",
    ignore_patterns = {},
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
})

local kind = require("lspsaga.lspkind")
-- kind[1] = " "
-- kind[2] = " "
-- kind[5] = "ﴯ "
-- kind[6] = " "
-- kind[7] = "ﰠ "
-- kind[9] = " "
-- kind[11] = " "
-- kind[12] = " "
-- kind[13] = " "
-- kind[14] = " "
-- kind[15] = " "
-- kind[16] = " "
-- kind[20] = " "
-- kind[22] = " "

-- local diagnostic = require('lspsaga.diagnostic')
local opts = { noremap = true, silent = true }
local k = vim.keymap.set

k('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
k('n', '<leader>ld', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts, { desc = '[L]ine [D]iagnostics' })
k('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts, { desc = { '[K] Hover Doc' } })
k('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts, { desc = '[G]oto [D]efinition' })
k('i', '<C-h>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts, { desc = 'Signature [C-h]elp' })
k('n', '<leader>pd', '<Cmd>Lspsaga peek_definition<CR>', opts, { desc = '[P]eek [D]efinition' })
k('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>', opts, { desc = '[R]e[N]ame' })
k({ 'n', 'v' }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "[C]ode [A]ction" })
-- k({ 'n', 'v' }, "<C-t>", "<cmd>Lspsaga term_toggle<CR>", { desc = "[T]oggle Terminal" })
