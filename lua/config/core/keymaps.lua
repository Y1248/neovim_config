vim.g.mapleader = ','
local keymap = vim.keymap

keymap.set('n', '<leader>w', '<cmd>w<CR>', {desc = 'Save file'})

-- Basic buffer management
keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', {desc = 'Close current buffer'})
-- Addtional buffer management: check bufferline.lua file

-- Window Management
keymap.set('n', '<leader>sv', '<C-w>v', {desc = 'Split window vertically'})
keymap.set('n', '<leader>sh', '<C-w>s', {desc = 'Split window horizontally'})
keymap.set('n', '<leader>se', '<C-w>=', {desc = 'Make splits equal size'})
keymap.set('n', '<leader>sx', '<cmd>close<CR>', {desc = 'Close current window'})

-- Tab management
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', {desc = 'Open new tab'})
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', {desc = 'Close current tab'})
keymap.set('n', '<leader>tn', '<cmd>tabnext<CR>', {desc = 'Go to next tab'})
keymap.set('n', '<leader>tp', '<cmd>tabprev<CR>', {desc = 'Go to previous tab'})
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = 'Open current buffer in next tab'})

-- Explore management
keymap.set('n', '<leader>E', '<cmd>Explore<CR>', {desc = 'Open Explore window'})

