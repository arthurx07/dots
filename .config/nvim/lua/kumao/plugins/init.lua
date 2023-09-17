return {
  { 'mbbill/undotree', config = function() vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) end },
  { 'tpope/vim-fugitive', config = function () vim.keymap.set("n", "<leader>gs", vim.cmd.Git) end },
  { 'windwp/nvim-autopairs', event = { "InsertEnter" }, config = true },
  { 'numToStr/Comment.nvim', event = { "BufReadPre", "BufNewFile" }, config = true },
  { 'lewis6991/gitsigns.nvim', config = true }, -- setup
  { 'NvChad/nvim-colorizer.lua', config = true },
  { "lukas-reineke/indent-blankline.nvim" },
  -- { "ThePrimeagen/vim-be-good" } -- practice game
  -- oil.nvim
}
