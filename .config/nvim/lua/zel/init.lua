require('zel.base')
require('zel.maps')

-- Load plugins
require("impatient")
require("nvim-surround").setup()

-- Keep system and nvim clipboard (copy and paste) in sync
vim.opt.clipboard:append { 'unnamedplus' }

-- Set vimwiki folder and set njk to html
vim.cmd [[
  let g:vimwiki_list = [{'path': '~/dox/vimwiki/'}]
  au BufNewFile,BufRead *.njk set filetype=html
]]

-- If buffer deleted then close NvimTree
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then
      vim.cmd("confirm quit")
    end
  end
})
