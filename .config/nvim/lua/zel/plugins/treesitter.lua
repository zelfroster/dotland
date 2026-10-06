return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- new nvim-treesitter API: setup() only accepts install_dir
		require("nvim-treesitter").setup()

		-- install parsers on startup
		local langs = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "html", "go" }
		require("nvim-treesitter.install").install(langs)

		-- enable treesitter highlighting (replaces the old highlight.enable option)
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})

		-- treesitter-based indentation
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
