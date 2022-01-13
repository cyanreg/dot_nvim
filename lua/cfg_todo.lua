local todo = require("todo-comments")

todo.setup({
    signs = false,
    highlight = {
        before = "",
        keyword = "bg",
        after = "",
        comments_only = true,
    },
})
