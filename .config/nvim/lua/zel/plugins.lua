local status, packer = pcall(require, 'packer')

-- Check if packer is already installed or not
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
})

packer.startup(function(use)
  -- Plugin Start --
  use 'wbthomason/packer.nvim'

  -- ColorScheme --
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end
  })

  -- Transparent --
  use 'xiyaowong/nvim-transparent'

  -- Lualine --
  -- default is `hoobert/lualine.nvim` but I have my fork which shows Arch
  -- Linux icon instead of Linux Icon
  use {
    'zelfroster/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline --
  use { 'akinsho/bufferline.nvim', tag = 'v3.*' }

  -- Winbar --
  -- use {
  --   "SmiteshP/nvim-navic",
  --   requires = "neovim/nvim-lspconfig"
  -- }

  -- LSP --
  use 'onsails/lspkind-nvim'            -- vscode like pictograms
  use 'hrsh7th/nvim-cmp'                -- completion
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-path'                -- nvim-cmp source for path
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for built-in LSP
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'glepnir/lspsaga.nvim'            -- LSP UIs
  use 'L3MON4D3/LuaSnip'                -- snippets
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to
  use 'williamboman/mason.nvim'         -- Mason to manage other LSPs
  use 'williamboman/mason-lspconfig.nvim'
  -- inject LSP diagnostics, code actions and more via Lua

  -- use 'rafamadriz/friendly-snippets'

  -- TreeSitter --
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- AutoPair and AutoTag --
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Undotree --
  use 'mbbill/undotree'

  -- Telescope --
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- File Icons --
  use 'kyazdani42/nvim-web-devicons'

  -- Colorizer --
  use 'norcalli/nvim-colorizer.lua'

  -- Git --
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- Nvim Tree --
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Comment --
  use 'numToStr/Comment.nvim'

  -- Vimwiki for taking notes
  use 'vimwiki/vimwiki'

  -- Wakatime --
  use 'wakatime/vim-wakatime'

  -- Markdown Preview --
  -- use({
  --   "zelfroster/markdown-preview.nvim",
  --   -- install without yarn or npm
  --   run = function() vim.fn["mkdp#util#install"]() end,
  -- })
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  })

  -- Impatient --
  use 'lewis6991/impatient.nvim' -- Improves nvim startup time

  -- Presence for Discord etc --
  use 'andweeb/presence.nvim'

  -- Surround, Edit, Delete brackets --
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({})
    end
  })

  -- Toggle Terminal --
  use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end }

  -- Fun --
  use 'eandrju/cellular-automaton.nvim'

  -- Indentation Lines --
  -- use 'Yggdroot/indentLine'

  -- Plugin End --
end)
