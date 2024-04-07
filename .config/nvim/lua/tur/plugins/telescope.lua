return {
    'nvim-telescope/telescope.nvim', tag = '0.1.3', -- or branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    local configs = require('telescope').setup{
        defaults = {
            prompt_prefix = "   ",
            selection_caret = "  ",
            entry_prefix = "  ",
            layout_strategy = "horizontal",
            layout_config = { horizontal = { prompt_position = "top" } },
        }}
    local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- all files in directory
        vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

        vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- only git tracked files

        vim.keymap.set('n', '<leader>ps', function() -- search for a string
        builtin.grep_string({ search = vim.fn.input("Grep > ") }) end)
    end
}
