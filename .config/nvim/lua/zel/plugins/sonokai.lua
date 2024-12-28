return {
	"sainnhe/sonokai",
	priority = 1000,
	config = function()
		vim.cmd([[
      set background=dark
      let g:sonokai_style='maia'
      let g:sonokai_transparent_background=1
      let g:sonokai_better_performance=1
      let g:sonokai_diagnostic_text_highlight=1
      let g:sonokai_enable_italic=1
      " colorscheme sonokai
    ]])
	end,
}
