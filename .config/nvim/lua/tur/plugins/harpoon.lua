return {
    'theprimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        -- local term = require("harpoon.term")

        -- add file to harpoon
        vim.keymap.set("n", "<leader>a", mark.add_file)
        -- toggle harpoon menu
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        -- nav between harpoon files
        vim.keymap.set("n", "<C-y>", function() ui.nav_file(1) end) -- previously <C-h>
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
        -- remap <C-> to <leader> [?]

        -- open/nav to a terminal
        -- vim.keymap.set("n", "<C-y>", function() term.gotoTerminal(1) end)
    end
}
