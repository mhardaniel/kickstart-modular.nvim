-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Move to first symbol on the line
vim.keymap.set('n', 'H', '^')

-- Move to last symbol of the line
vim.keymap.set('n', 'L', '$')

-- Shift + q - Quit
vim.keymap.set('n', 'Q', '<C-W>q')

-- vv - Makes vertical split
vim.keymap.set('n', 'vv', '<C-W>v')

-- ss - Makes horizontal split
vim.keymap.set('n', 'ss', '<C-W>s')

-- Indenting in visual mode (tab/shift+tab)
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

-- Move to the end of yanked text after yank and paste
vim.cmd 'vnoremap <silent> y y`]'
vim.cmd 'vnoremap <silent> p p`]'
vim.cmd 'nnoremap <silent> p p`]'

-- Space + Space to clean search highlight
vim.keymap.set('n', '<Leader>h', ':noh<CR>', { silent = true })

-- Fixes pasting after visual selection.
vim.keymap.set('v', 'p', '"_dP')

-- vim: ts=2 sts=2 sw=2 et
