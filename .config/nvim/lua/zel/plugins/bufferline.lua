return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "thin",
			diagnostics = false,
			always_show_bufferline = true,
			show_buffer_close_icons = false,
			show_tab_indicators = false,
			show_close_icon = false,
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true,
				},
			},
			color_icons = true,
			indicator = {
				-- icon = "▐ ▌█",
				icon = "",
				style = "icon", -- 'icon' | 'underline' | 'none',
			},
		},
		highlights = {
			-- background = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- buffer_selected = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#32302f",
			-- 	italic = false,
			-- },
			-- fill = {
			-- 	fg = "#928374",
			-- 	bg = "#282828",
			-- },
			-- modified = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- modified_visible = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- modified_selected = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#32302f",
			-- },
			-- indicator_visible = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#32302f",
			-- },
			-- indicator_selected = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#32302f",
			-- },
			-- offset_separator = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#32302f",
			-- },
			-- duplicate = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- duplicate_selected = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#232A2E",
			-- },
			-- duplicate_visible = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- pick = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- pick_selected = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#232A2E",
			-- },
			-- pick_visible = {
			-- 	fg = "#d3c6aa",
			-- 	bg = "#282828",
			-- },
			-- separator = {
			-- 	fg = "#282828",
			-- 	bg = "#282828",
			-- },
			-- separator_selected = {
			-- 	fg = "#32302f",
			-- 	bg = "#32302f",
			-- },
			separator = {
				fg = "#282828",
			},
			-- separator_selected = {
			--   fg = "#000000",
			-- },
		},
	},
}
