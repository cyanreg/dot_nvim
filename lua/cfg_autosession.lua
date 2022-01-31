local autosession = require('auto-session')

autosession.setup({
    log_level = 'info',
    auto_session_suppress_dirs = { '~/', '~/projects', },
    auto_session_enable_last_session = false,
})

require('session-lens').setup({
    previewer = false,
})
