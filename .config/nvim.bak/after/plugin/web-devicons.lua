local status, icons = pcall(require, 'nvim-web-devicons')

if (not status) then return end

icons.setup {
  override = {}, -- add personal icons to override default ones
  default = true
}
