return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	config = function()
		vim.cmd([[
      set background=dark
      let g:gruvbox_material_background = 'hard'
      let g:gruvbox_material_enable_bold = 0
      let g:gruvbox_material_colorful_syntax = 1
      let g:gruvbox_material_enable_italic = 1
      let g:gruvbox_material_transparent_background = 2
      " let g:gruvbox_material_diagnostic_text_highlight = 1
      let g:gruvbox_material_better_performance = 1
      colorscheme gruvbox-material
    ]])
	end,
}
