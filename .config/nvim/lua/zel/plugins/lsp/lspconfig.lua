return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local keymap = vim.keymap

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.buf.hover({ border = "rounded" })
		vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.buf.signature_help({ border = "rounded" })

		vim.diagnostic.config({
			virtual_text = true,
			update_in_insert = false,
			severity_sort = true,
			float = { border = "rounded", source = "if_many" },
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "[G]oto [R]eferences"
				keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
				opts.desc = "[G]oto [D]eclaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				opts.desc = "[G]oto [D]efinition"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
				opts.desc = "[G]oto [I]mplementation"
				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
				opts.desc = "[G]oto [T]ype Definition"
				keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
				opts.desc = "[C]ode [A]ction"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				opts.desc = "Smart [R]e[N]ame"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				opts.desc = "Show buffer [D]iagnostics"
				keymap.set("n", "<leader>d", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
				opts.desc = "[D]ocument [S]ymbols"
				keymap.set("n", "<leader>Ds", "<cmd>Telescope lsp_document_symbols<CR>", opts)
				opts.desc = "[W]orkspace [S]ymbols"
				keymap.set("n", "<leader>ws", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", opts)
				opts.desc = "Hover documentation"
				keymap.set("n", "K", vim.lsp.buf.hover, opts)
				opts.desc = "Restart LSP"
				keymap.set("n", "<leader>lrs", ":LspRestart<CR>", opts)
			end,
		})

		local capabilities = require("blink.cmp").get_lsp_capabilities()

		local servers = {
			ts_ls = {
				filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
			},
			gopls = {
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
			},
			pyright = {
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							typeCheckingMode = "basic",
						},
					},
				},
			},
			tailwindcss = {
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"typescriptreact",
					"javascriptreact",
					"svelte",
					"astro",
					"vue",
				},
			},
			lua_ls = {
				settings = {
					Lua = {
						completion = { callSnippet = "Replace" },
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
					},
				},
			},
			postgres_lsp = { filetypes = { "pgsql", "postgres" } },
			sqls = { filetypes = { "sql" } },
		}

		require("mason").setup()

		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			"prettier",
			"stylua",
			"black",
			"isort",
			"gofumpt",
			"golines",
			"pylint",
			"eslint_d",
			"golangci-lint",
		})
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		mason_lspconfig.setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					lspconfig[server_name].setup(server)
				end,
			},
		})
	end,
}
