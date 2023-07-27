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

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {"italic"},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

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
