vim.g.mapleader = " "

-- plugins:
-- NVIM-TREE: <leader>pv / TELESCOPE: <leader>pf, <C-p>, <leader>ps
-- UNDOTREE: <leader>u / FUGITIVE: <leader>gs / HARPOON: <leader>a, <C-e>, <C-y>, <C-t>, <C-n>, <C-s>

-- move lines when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- buffer management
vim.keymap.set("n", "<C-b>", ":bd<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")

-- window management
vim.keymap.set("n", "<leader>w", "<C-w>W")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
-- use alt + hjkl to resize windows
vim.keymap.set("n", "<M-j>", ":resize -2<CR>")
vim.keymap.set("n", "<M-k>", ":resize +2<CR>")
vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>")
-- splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
-- vim.keymap.set("n", "<C-S-Tab>", "gT")
-- vim.keymap.set("n", "<C-Tab>", "gt")
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tabkeymap.set("n", "<S-t>", ":tabnew<CR>")

-- open terminal
vim.keymap.set("n", "<leader>z", ":sp<CR>:terminal<CR>")

-- remap escape
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")

vim.keymap.set("n", "J", "mzJ`z") -- append line at end, cursor at start
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- cursor in the middle while jumping between the page
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- same as above
vim.keymap.set("n", "n", "nzzzv") -- cursor in the middle while searching
vim.keymap.set("n", "N", "Nzzzv") -- same as above

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste copied text in selection while preserving it afterwards

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- separate vim's clipboard with system's clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- [y for vim, <leader>y/Y for system]

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- deleting to avoid register

-- vim.keymap.set("n", "Q", "<nop>") -- [?]
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- switch projects with tmux 
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- not using an lsp

-- to see: QuickFix
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace the word you are on
vim.keymap.set("n", "<leader>x", "<cmd>!chmod u+x %<CR>", { silent = true }) -- make file executable

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
