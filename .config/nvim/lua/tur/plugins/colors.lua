return {
    { 'EdenEast/nightfox.nvim',
    priority = 1000,
    config = function()
        local configs = require("nightfox").setup{
            options = { transparent = true, },
            groups = { all = { NormalFloat = { bg = "NONE" } } },
        }
        -- color = color or "carbonfox"
        vim.cmd.colorscheme("carbonfox")
    end
    }
}
