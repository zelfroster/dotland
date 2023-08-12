-- -- local colorscheme = "pywal"
-- -- local colorscheme = "rose-pine"
-- -- local colorscheme = "kanagawa"
-- local colorscheme = "catppuccin"
--
-- -- Transparent
-- -- vim.api.nvim_create_autocmd("ColorScheme", {
-- -- 	pattern = "*",
-- -- 	callback = function()
-- -- 		local hl_groups = {
-- -- 			"Normal",
-- -- 			"SignColumn",
-- -- 			"NormalNC",
-- -- 			-- "TelescopeBorder",
-- -- 			"NvimTreeNormal",
-- -- 			"EndOfBuffer",
-- -- 			"MsgArea",
-- -- 		}
-- -- 		-- for _, name in ipairs(hl_groups) do
-- -- 		-- 	vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
-- -- 		-- end
-- -- 	end,
-- -- })
--
-- vim.opt.fillchars = "eob: "
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	return
-- end
--

-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = false,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = false,
--     dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {"italic"},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = false,
--         mini = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })

-- setup must be called before loading the colorscheme
-- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = {
--     strings = true,
--     comments = true,
--     operators = false,
--     folds = true,
--   },
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true,    -- invert background for search, diffs, statuslines and errors
--   contrast = "hard", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {
--   },
--   dim_inactive = false,
--   transparent_mode = true,
-- })

require("everforest").setup({
  ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  ---Default is "medium".
  background = "medium",
  ---How much of the background should be transparent. 2 will have more UI
  ---components be transparent (e.g. status line background)
  transparent_background_level = 0,
  ---Whether italics should be used for keywords and more.
  italics = false,
  ---Disable italic fonts for comments. Comments are in italics by default, set
  ---this to `true` to make them _not_ italic!
  disable_italic_comments = false,
  ---By default, the colour of the sign column background is the same as the as normal text
  ---background, but you can use a grey background by setting this to `"grey"`.
  sign_column_background = "none",
  ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
  ---`"low"` (default).
  ui_contrast = "low",
  ---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
  dim_inactive_windows = false,
  ---Some plugins support highlighting error/warning/info/hint texts, by
  ---default these texts are only underlined, but you can use this option to
  ---also highlight the background of them.
  diagnostic_text_highlight = false,
  ---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
  diagnostic_virtual_text = "coloured",
  ---Some plugins support highlighting error/warning/info/hint lines, but this
  ---feature is disabled by default in this colour scheme.
  diagnostic_line_highlight = false,
  ---By default, this color scheme won't colour the foreground of |spell|, instead
  ---colored under curls will be used. If you also want to colour the foreground,
  ---set this option to `true`.
  spell_foreground = false,
  ---You can override specific highlights to use other groups or a hex colour.
  ---This function will be called with the highlights and colour palette tables.
  ---@param highlight_groups Highlights
  ---@param palette Palette
  on_highlights = function(highlight_groups, palette) end,
})

-- setup must be called before loading
vim.cmd.colorscheme "everforest"

-- require('rose-pine').setup({
--     disable_background = false
-- })
--
-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
-- end
--
-- ColorMyPencils()
