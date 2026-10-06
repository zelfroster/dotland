-- Disable unused providers to suppress checkhealth warnings
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

require("zel.core.keymaps")
require("zel.core.options")
require("zel.lazy")
