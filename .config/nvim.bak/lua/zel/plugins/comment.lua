return   {
  'numToStr/Comment.nvim',
  lazy = false,
  opts = {},
  config = function()
    local status1, comment = pcall(require, 'Comment')
    if (not status1) then return end

    local status2, ft = pcall(require, 'Comment.ft')
    if (not status2) then return end

    comment.setup {}

    ft
    .set('javascriptreact', '{/*%s*/}')
    .set('typescriptreact', '{/*%s*/}')
    .set('markdown', '{/*%s*/}')
  end
}
