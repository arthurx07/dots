vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- default

-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Tabs & indentation
-- vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.smartindent = true -- see cindent, autoindent
vim.opt.filetype.indent = true
-- vim.opt.shiftround = true

-- Line wrapping
vim.opt.wrap = false -- don't wrap text when line is longer than display

-- Search settings
vim.opt.incsearch = true      -- highlight where the pattern first matches
vim.opt.hlsearch = false      -- highlight all search matched patterns
-- Case-insensitive searching unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.termguicolors = true  -- colorscheme working properly
vim.opt.signcolumn = 'yes' -- signcolumn display settings [signs (error, etc.) in the left column]
vim.opt.colorcolumn = '80' -- 80 (default), 100 (i think it's sane for 2024)

-- Backspace (don't really understand it)
vim.opt.backspace = "indent,eol,start" -- Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
-- indent: allow backspacing over autoindent
-- eol: allow backspacing over line breaks (join lines)
-- start: allow backspacing over the start of insert; CTRL-W and CTRL-U stop once at the start of insert.
-- nostop: like start, except CTRL-W and CTRL-U do not stop at the start of insert

-- Clipboard
-- vim.opt.clipboard:append('unnamedplus') -- using asbjornHaland

-- Split windows
vim.opt.splitright =  true
vim.opt.splitbelow = true

-- disable netrw, as using nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Misc
vim.opt.iskeyword:append("-") -- consider dash part of the word when "dw"
vim.opt.scrolloff = 8         -- never less than 8 lines below and above cursor
vim.opt.isfname:append("@-@") -- The characters specified by this option are included in file names and path names.
-- In theory it's for nvim to not fail with files with @ in its filename, but I haven't really seen a difference. 
vim.opt.updatetime = 50       -- faster update time
vim.opt.mouse = 'a' -- enable mouse always
vim.opt.completeopt = 'menuone,noselect,preview,noinsert' -- completeopt to have a better completion experience [testing, maybe remove preview,noinsert]
vim.opt.cursorline = true
vim.opt.autochdir = true -- change current working dir whenever openin file, switching buffers, deleting buffers or open/close a window
-- vim.o.showtabline = 2 -- always show tabline
-- vim.opt.runtimepath = vim.opt.runtimepath + '/usr/share/vim/vimfiles' (not needed, installed gentoo-syntax with lazy.nvim) 
-- vim.opt.rtp:append('/usr/share/vim/vimfiles') -- enable gentoo-syntax, vim plugins enabled in nvim

-- instead of saving file history/undos only for the period of a session save undo history
-- on disk and make it persistent, to be able to undo things from other previous sessions.
-- great options for using with undotree, which provides a visual way to get back and forth to 
-- older/newer file versions.
vim.opt.swapfile = false -- use a swapfile for the buffer, will be deleted when closing it
vim.opt.backup = false -- make a backup before overwriting a file
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- set undodir dir
vim.opt.undofile = true -- save undo history to this file

-- Read .ms files as groff automatically
vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = "*.ms,*.me,*.mom,*.man", command = "set filetype=groff" }
)

-- TODO: save file as sudo if required
-- TODO: automatically delete all trailing whitespaces and newlines at
-- end of file on save
-- (see lukesmith's init.vim)
