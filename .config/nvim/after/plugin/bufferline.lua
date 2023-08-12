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
    -- indicator = {
    --   icon = '▎', -- this should be omitted if indicator style is not 'icon'
    --   style = 'icon',
    --   -- style = 'icon' | 'underline' | 'none',
    -- },
  },
  highlights = highlights,
  -- highlights = require("catppuccin.groups.integrations.bufferline").get(),
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
  highlights = {
    separator = {
      fg = '#2e383c',
      bg = '#2e383c',
    },
    separator_selected = {
      fg = '#d3c6aa',
      bg = '#2e383c',
    },
    separator_visible = {
      fg = '#d3c6aa',
      bg = '#2e383c',
    },
    background = {
      fg = '#d3c6aa',
      bg = '#2e383c'
    },
    buffer_selected = {
      fg = '#d3c6aa',
      bg = '#1e2326',
      italic = true
    },
    fill = {
      bg = '#374145'
      -- bg = '#15181E'
    },
    modified = {
      bg = '#374145'
    },
    modified_visible = {
      bg = '#374145'
    },
    modified_selected = {
      bg = '#374145'
    },
    tab = {
      bg = '#374145'
    },
    tab_selected = {
      bg = '#374145'
    },
    tab_close = {
      bg = '#374145'
    },
    close_button = {
      bg = '#374145'
    },
    close_button_visible = {
      bg = '#374145'
    },
    close_button_selected = {
      bg = '#374145'
    },
    indicator_selected = {
      bg = '#374145'
    },
    pick_selected = {
      bg = '#374145',
      bold = true,
      italic = true,
    },
    pick_visible = {
      bg = '#374145',
      bold = true,
      italic = true,
    },
    pick = {
      bg = '#374145',
      bold = true,
      italic = true,
    },
  },
})

-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
