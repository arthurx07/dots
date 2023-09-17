return {
    'yamatsum/nvim-cursorline',
    config = function ()
        local configs = require('nvim-cursorline').setup {
            cursorline = { enable = false, timeout = 0, number = true }, -- enabling cursorline highlights prompt in Telescope
            cursorword = { enable = true, min_length = 3, hl = { underline = true } }
        }
    end
}
