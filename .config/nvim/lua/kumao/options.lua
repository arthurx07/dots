vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- default

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
-- vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.smartindent = true -- see cindent, autoindent
vim.opt.filetype.indent = true
-- vim.opt.shiftround

-- line wrapping
vim.opt.wrap = false -- don't wrap text when line is longer than display

-- search settings
vim.opt.incsearch = true      -- highlight where the pattern first matches
vim.opt.hlsearch = false      -- highlight all search matched patterns
-- case-insensitive searching unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true  -- colorscheme working properly
vim.opt.signcolumn = 'yes' -- signcolumn display settings [signs (error, etc.) in the left column]
vim.opt.colorcolumn = '' -- 80

-- backspace
-- vim.opt.backspace = "indent,eol,start" -- [!] review

-- clipboard
-- vim.opt.clipboard:append('unnamedplus') -- using asbjornHaland

-- split windows
vim.opt.splitright =  true
vim.opt.splitbelow = true

-- misc
vim.opt.iskeyword:append("-") -- consider dash part of the word when "dw"
vim.opt.scrolloff = 8         -- never less than 8 lines below and above cursor
vim.opt.isfname:append("@-@") -- [?]
vim.opt.updatetime = 50       -- faster update time
-- vim.opt.colorcolumn = "221" -- [!] review
vim.opt.mouse = 'a' -- enable mouse always
vim.opt.completeopt = 'menuone,noselect' -- [!] completeopt to have a better completion experience
vim.opt.runtimepath = vim.opt.runtimepath + '/usr/share/vim/vimfiles'
-- vim.o.showtabline = 2 -- always show tabline
-- vim.opt.rtp:append('/usr/share/vim/vimfiles') -- enable gentoo-syntax, vim plugins enabled in nvim
vim.opt.cursorline = true

-- UNDOTREE[?]: disable swap+backup, but enable undodir/undofile 
-- to be able to undo things from days ago
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- .vim/undodir/ {?}
vim.opt.undofile = true
