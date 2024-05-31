return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    local status1, mason = pcall(require, 'mason')
    if (not status1) then return end

    local status2, masonlsp = pcall(require, 'mason-lspconfig')
    if (not status2) then return end

    mason.setup {}
    masonlsp.setup({
      ensure_installed = {
        "tsserver",
        "lua_ls",
        "cssls",
        "tailwindcss",
        "emmet_ls",
      },
      automatic_installation = true
    })
  end
}
