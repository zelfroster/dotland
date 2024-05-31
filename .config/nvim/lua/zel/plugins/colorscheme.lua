return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	config = function()
		vim.cmd([[
      set background=dark
      let g:gruvbox_material_background = 'medium'
      let g:gruvbox_material_enable_bold = 0 
      let g:gruvbox_material_transparent_background = 1 
      colorscheme gruvbox-material
    ]])
	end,
}
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   priority = 1000,
--   config = function()
--     require("rose-pine").setup({
--       disable_background = false,
--       dim_inactive_windows = false,
--       styles = {
--         transparency = true,
--       },
--       highlight_groups = {
--         NotifyBackground = { bg = "foam" },
--       },
--     })
--     vim.cmd("colorscheme rose-pine-moon")
--   end,
-- }
