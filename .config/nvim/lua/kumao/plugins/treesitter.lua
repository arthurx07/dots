return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function () 
      local configs = require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },  
        })
    end
 }
