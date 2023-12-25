return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = { -- this is equalent to setup({}) function
    disable_filetype = { 'TelescopePrompt', 'vim' }
  }
}
