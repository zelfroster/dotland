local status, navic = pcall(require, "nvim-navic")

if (not status) then return end

navic.setup({
  -- icons = {
  --   File = " ",
  --   Module = " ",
  --   Namespace = " ",
  --   Package = " ",
  --   Class = " ",
  --   Method = " ",
  --   Property = " ",
  --   Field = " ",
  --   Constructor = " ",
  --   Enum = " ",
  --   Interface = " ",
  --   Function = " ",
  --   Variable = " ",
  --   Constant = " ",
  --   String = " ",
  --   Number = " ",
  --   Boolean = " ",
  --   Array = " ",
  --   Object = " ",
  --   Key = " ",
  --   Null = " ",
  --   EnumMember = " ",
  --   Struct = "  ",
  --   Event = " ",
  --   Operator = " ",
  --   TypeParameter = " ",
  -- },
  highlight = true,
  separator = "  ",
  depth_limit = 2,
  depth_limit_indicator = "..",
  safe_output = true,
})

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
