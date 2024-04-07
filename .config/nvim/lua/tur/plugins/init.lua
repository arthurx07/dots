return {
  { 'mbbill/undotree', cmd = { "UndotreeToggle" } },
  { 'tpope/vim-fugitive', cmd = { "Git" }, },
  { 'windwp/nvim-autopairs', event = { "InsertEnter" }, config = true },
  -- Me hace ir más lento lo del autopairs ¿?
  { 'numToStr/Comment.nvim', event = { "BufReadPre", "BufNewFile" }, config = true },
  { 'lewis6991/gitsigns.nvim', config = true }, -- setup
  { 'NvChad/nvim-colorizer.lua', config = true },
  { "lukas-reineke/indent-blankline.nvim" },
  { "gentoo/gentoo-syntax", }, -- A vim plugin that handles Gentoo and portage related syntax highlighting, filetype, and indent settings. Written in vim script
  { "folke/zen-mode.nvim", cmd = { "ZenMode" }, }, -- Distraction-free coding for Neovim
  { "folke/twilight.nvim" } -- Dims inactive portions of the code you're editing. Auto enabled in ZenMode
  -- { "ThePrimeagen/vim-be-good" } -- practice game
}

-- if plugin has an (event, cmd, ft or keys) key plugin will be lazy loaded.
