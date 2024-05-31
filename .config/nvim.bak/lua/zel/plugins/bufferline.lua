return {
  'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local status, bufferline = pcall(require, "bufferline")
    bufferline.setup({
      options = {
        mode = 'tabs',
        separator_style = { "│", "│" },
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_tab_indicators = false,
        show_close_icon = false,
        -- show_buffer_default_icon = true,
        -- get_element_icon = function(buf) return require('nvim-web-devicons').get_icon(..., {default = false}),
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true
          }
        },
        color_icons = true,
        indicator = {
          -- icon = '', -- this should be omitted if indicator style is not 'icon'
          icon = '', -- this should be omitted if indicator style is not 'icon'
          -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'icon',
          -- style = 'icon' | 'underline' | 'none',
        },
      },
      highlights = {
        background = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        buffer_selected = {
          fg = '#d3c6aa',
          bg = '#414B50',
          italic = true
        },
        fill = {
          fg = '#d3c6aa',
          bg = '#2E383C'
        },
        modified = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        modified_visible = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        modified_selected = {
          fg = '#d3c6aa',
          bg = '#414B50'
        },
        indicator_visible = {
          fg = '#d3c6aa',
          bg = '#414B50'
        },
        indicator_selected = {
          fg = '#d3c6aa',
          bg = '#414B50'
        },
        offset_separator = {
          fg = '#d3c6aa',
          bg = '#1e2326'
        },
        duplicate = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        duplicate_selected = {
          fg = '#d3c6aa',
          bg = '#232A2E'
        },
        duplicate_visible = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        pick = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        pick_selected = {
          fg = '#d3c6aa',
          bg = '#232A2E'
        },
        pick_visible = {
          fg = '#d3c6aa',
          bg = '#2e383c'
        },
        -- separator = {
        --   bg = '#2e383c'
        -- }
      },
    })
  end
}

-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
