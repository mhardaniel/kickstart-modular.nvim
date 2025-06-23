-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.o.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'
--  and `:help 'listchars'
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- No swap files
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- update vim after file update from outside
vim.o.autoread = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- " Open splits on the right and below
vim.o.splitbelow = true
vim.o.splitright = true

-- " Indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- " Always use spaces insted of tabs
vim.o.expandtab = true

-- " Don't wrap lines
vim.o.wrap = true
-- " Wrap lines at convenient points
vim.o.linebreak = true
-- " Show line breaks
vim.o.showbreak = '↳'

-- " This makes vim act like all other editors, buffers can
-- " exist in the background without being in a window.
vim.o.hidden = true

-- " Add the g flag to search/replace by default
vim.o.gdefault = true

-- Lazy redraw
vim.o.lazyredraw = true

-- vim: ts=2 sts=2 sw=2 et
