local status1, mason = pcall(require, 'mason')
local status2, lspconfig = pcall(require, 'mason-lspconfig')

if (not status1) then return end
if (not status2) then return end

mason.setup {}
lspconfig.setup({
  automatic_installation = true
})
