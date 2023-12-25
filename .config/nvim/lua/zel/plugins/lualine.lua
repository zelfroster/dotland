return {
  'zelfroster/lualine.nvim', -- my fork with   icon instead of   icon
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
    local status, lualine = pcall(require, 'lualine')
    if (not status) then return end

    lualine.setup {
      options = {
        icons_enabled = true,
        themes = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = '' },
        disabled_filetypes = {}
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { {
          'filename',
          file_status = true, -- display file status (readonly status, modified status)
          path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          symbols = {
            modified = ' ', -- Text to show when the file is modified.
            readonly = ' ', -- Text to show when the file is non-modifiable or readonly.
            unnamed = '[No Name]', -- Text to show for unnamed buffers.
            newfile = '[New]', -- Text to show for newly created file before first write
          }
        } },
        lualine_x = {
          -- { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = ' ', warn = ' ', info = ' ',
          --   hint = ' ' } },
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = {
              error = '✘ ',
              warn = '▲ ',
              info = ' ',
              hint = ' '
            }
          },
          -- { 'diagnostics' },
          {
            'filetype',
            -- padding = { left = 2, right = 2 },
            icon = {
              -- padding = { left = 2, right = 2 },
              -- 'X', align = 'right'
            }
          },
          'encoding',
          'fileformat'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { {
          'filename',
          file_status = true, -- displays file status (readonly status, modified status)
          path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          symbols = {
            modified = ' ', -- Text to show when the file is modified.
            readonly = ' ', -- Text to show when the file is non-modifiable or readonly.
            unnamed = '[No Name]', -- Text to show for unnamed buffers.
            newfile = '[New]', -- Text to show for newly created file before first write
          }
        } },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = { 'fugitive' }
    }
  end
}
