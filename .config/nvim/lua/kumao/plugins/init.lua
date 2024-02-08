return {
  { 'mbbill/undotree', config = function() vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) end },
  { 'tpope/vim-fugitive', config = function () vim.keymap.set("n", "<leader>gs", vim.cmd.Git) end },
  { 'windwp/nvim-autopairs', event = { "InsertEnter" }, config = true },
  { 'numToStr/Comment.nvim', event = { "BufReadPre", "BufNewFile" }, config = true },
  { 'lewis6991/gitsigns.nvim', config = true }, -- setup
  { 'NvChad/nvim-colorizer.lua', config = true },
  { "lukas-reineke/indent-blankline.nvim" },
  { "gentoo/gentoo-syntax" }, -- A vim plugin that handles Gentoo and portage related syntax highlighting, filetype, and indent settings. Written in vim script
  { "folke/zen-mode.nvim" }, -- Distraction-free coding for Neovim
  { "folke/twilight.nvim" } -- Dims inactive portions of the code you're editing. Auto enabled in ZenMode
  -- { "ThePrimeagen/vim-be-good" } -- practice game
}
