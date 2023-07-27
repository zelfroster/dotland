local k = vim.keymap

-- Open Netrw
k.set("n", "<leader>pv", vim.cmd.Ex)

-- mappings buffer
k.set("n", "<leader>bd", ":bd<CR>")

-- Increment/Decrement
k.set("n", "+", "<C-a>")
k.set("n", "-", "<C-x>")

-- Select all
k.set("n", "<C-a>", "gg<S-v>G")

-- New tab
k.set('n', 'te', ':tabe<Return>', { silent = true })

-- Move selected text up and down
k.set("v", "J", ":m '>+1<CR>gv=gv")
k.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append the next Line to the current line
k.set("n", "J", "mzJ`z")

-- Movements with cursor always in center
k.set("n", "<C-d>", "<C-d>zz")
k.set("n", "<C-u>", "<C-u>zz")
k.set("n", "n", "nzzzv")
k.set("n", "N", "Nzzzv")

k.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })
k.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })

-- Window movements
k.set('n', '<leader><Space>', '<C-w>w') -- Cycle through windows
k.set('n', '<leader>gh', '<C-w>h')      -- Go to left window
k.set('n', '<leader>gj', '<C-w>j')      -- Go to down window
k.set('n', '<leader>gk', '<C-w>k')      -- Go to up window
k.set('n', '<leader>gl', '<C-w>l')      -- Go to right window

-- Resize window by 10 units
k.set('n', '<leader>ch', '10<C-w><')
k.set('n', '<leader>cl', '10<C-w>>')
k.set('n', '<leader>ck', '10<C-w>+')
k.set('n', '<leader>cj', '10<C-w>-')

-- Greatest remap ever
k.set("n", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
k.set("n", "<leader>y", "\"+y")
k.set("v", "<leader>y", "\"+y")
k.set("n", "<leader>Y", "\"+Y")

k.set("n", "<leader>d", "\"_d")
k.set("v", "<leader>d", "\"_d")

-- Map Control-C to ESC
k.set("i", "<C-c>", "<Esc>")

k.set("n", "Q", "<nop>")                   -- don't know what it does

k.set("n", "<C-f>", ":NvimTreeToggle<CR>") -- Toggle NvimTree

k.set("n", "<leader>f", function()
  vim.lsp.buf.format() -- format using default lsp
end)

k.set("n", "<C-k>", "<cmd>cnext<CR>zz")
k.set("n", "<C-j>", "<cmd>cprev<CR>zz")
k.set("n", "<leader>k", "<cmd>lnext<CR>zz")
k.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Leader-r to rename
k.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Leader-x to make file executable
k.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Leader-tp to toggle transparency ( requires nvim-transparent )
k.set("n", "<leader>tp", "<cmd>TransparentToggle<CR>", { silent = true })

-- A fun thing to do
k.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { silent = true })

-- Compile and Run C Program
k.set('', '<F9>', ':!g++ -o %< % && ./%< <CR>')

-- Swap TAB keymap to buffers if using buffers instead of TABs
-- k.set("n", "gt", ":bnext<CR>")
-- k.set("n", "gT", ":bprevious<CR>")
-- -- tab mappings
-- k.set("n", "<TAB>", "gt")
-- k.set("n", "<S-TAB>", "gT")
