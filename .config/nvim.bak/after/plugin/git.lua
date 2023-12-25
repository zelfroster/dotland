local status, git = pcall(require, 'git')

if (not status) then return end

git.setup({
  keymaps = {
    blame = '<Leader>gb', -- open blame window
    browse = '<Leader>go' -- open file/folder in git repository
  }
})
