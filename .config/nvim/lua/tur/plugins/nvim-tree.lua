return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- lazy = true,
    -- cmd = { "NvimTreeToggle", "NvimTreeFocus" },
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
      disable_netrw = true
      hijack_netrw = true
      hijack_cursor = true
    end
}
