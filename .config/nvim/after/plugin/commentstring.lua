local status1, comment = pcall(require, 'Comment')
if (not status1) then return end

local status2, ft = pcall(require, 'Comment.ft')
if (not status2) then return end

comment.setup {}

-- 1. Using set function

ft
-- Set only line comment
    .set('javascriptreact', '{/*%s*/}')
    .set('typescriptreact', '{/*%s*/}')
    .set('markdown', '{/*%s*/}')
-- Or set both line and block commentstring
-- .set('javascript', {'//%s', '/*%s*/'})

-- 2. Metatable magic

--[[ ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s' ]]
-- Multiple filetypes
--[[ ft({'go', 'rust'}, ft.get('c'))
ft({'toml', 'graphql'}, '#%s') ]]
