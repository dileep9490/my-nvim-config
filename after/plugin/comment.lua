local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    return
end

local todo_comments= require("todo-comments")

todo_comments.setup({})

comment.setup({
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
})
