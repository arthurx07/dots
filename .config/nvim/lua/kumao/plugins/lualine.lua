return {
    'nvim-lualine/lualine.nvim', 
	dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
    lazy = false,
	config = function()
      local configs = require("lualine").setup{
        options = { 
            theme = 'codedark', -- theme = 'pywal',
            section_separators = '',
            component_separators = '' },
        sections = { -- Default configs
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        extensions = { 'nvim-tree' }
        }
    end
}
