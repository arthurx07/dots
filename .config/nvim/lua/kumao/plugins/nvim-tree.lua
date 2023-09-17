return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local configs = require("nvim-tree").setup {
        renderer = {
            indent_markers = { enable = true },
            icons = {
                git_placement = "signcolumn",
                show = { file = true, folder = true, folder_arrow = false, git = true } },
                -- glyphs = { folder = { arrow_closed = "+", arrow_open = "-" } }
        }, 
        filters = { dotfiles = false } }

        -- [nvim-tree] disable netrw when using nvim-tree
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
    end
}
