local neoclip = require('neoclip')

neoclip.setup({
    history = 256,
    enable_persistant_history = false,
    preview = true,
    content_spec_column = true,
    default_register = '+',
    on_paste = {
        set_reg = true,
    },
})
