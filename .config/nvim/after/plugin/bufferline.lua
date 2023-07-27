local status, bufferline = pcall(require, "bufferline")

if (not status) then return end

bufferline.setup({
  options = {
    mode = 'tabs',
    -- separator_style = 'thin',
    -- separator_style = { "|", "|" },
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    offsets = { { filetype = "NvimTree", text = "File Explorer" } },
    color_icons = true,
    indicator = {
      -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
      style = 'none',
      -- style = 'icon' | 'underline' | 'none',
    },
  },
  -- highlights = highlights,
  highlights = require("catppuccin.groups.integrations.bufferline").get(),
  -- highlights = require("catppuccin.groups.integrations.bufferline").get {
  --   styles = { "italic", "bold" },
  --   custom = {
  --       all = {
  --           fill = { bg = mocha.background },
  --           background = { fg = mocha.text },
  --       },
  --       mocha = {
  --           background = { fg = mocha.text },
  --       },
  --       -- latte = {
  --       --     background = { fg = "#000000" },
  --       -- },
  --   },
  -- },
  -- highlights = {
  --   -- separator = {
  --   --     fg = '#1E1E2E',
  --   --     bg = '#1E1E2E',
  --   -- },
  --   -- separator_selected = {
  --   --     fg = '#1E1E2E',
  --   -- },
  --   background = {
  --     fg = '#656b93',
  --     bg = '#1E1E2E'
  --   },
  --   buffer_selected = {
  --     fg = '#d0d0ff',
  --     bg = '#1E1E2E',
  --     italic = true
  --   },
  --   fill = {
  --     bg = '#11111B'
  --     -- bg = '#15181E'
  --   }
  -- },
})

-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
