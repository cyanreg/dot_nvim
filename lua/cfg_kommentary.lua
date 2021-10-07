require('kommentary')
local comment_config = require('kommentary.config')

comment_config.configure_language( "asm", {
    single_line_comment_string = ";",
    multi_line_comment_strings = false,
    ignore_whitespace = true,
})
