local status, transparent = pcall(require, "transparent")

if (not status) then return end

transparent.setup({
	extra_groups = { -- table/string: additional groups that should be cleared
		-- "all"
		-- In particular, when you set it to 'all', that means all available groups

		"NvimTreeNormal",
		"NvimTreeStatusLine",
		"NvimTreeWindowPicker",
		"NvimTreeBookmark",
		"TelescopeNormal",
		"MatchParen"

	},
	exclude_groups = {
		-- "CursorLineNr",
		-- "NonText",
		-- "Comment",
	}, -- table: groups you don't want to clear
})
