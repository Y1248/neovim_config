vim.g.mapleader = ','
local keymap = vim.keymap

keymap.set('n', '<leader>w', '<cmd>w<CR>', {desc = 'Save file'})

-- Basic buffer management
keymap.set('n', '<leader>bb', ':buffers<cr>:b<space>', { silent = true })
keymap.set('n', '<leader>q', '<cmd>bdelete!<CR>', {desc = 'Close current buffer'})
-- Addtional buffer management: check bufferline.lua file
  -- <A-d> delete the current buffer
  -- <A-#> change to buffer #
  -- <A-{h/j/k/l} cycle to the h/j/k/l buffer
  -- <A-o> only keep current buffer (which is delete all other buffers)

-- Window Management
keymap.set('n', '<leader>sx', '<cmd>close<CR>', {desc = 'Close current window'})
keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
-- keymap.set('n', '<C-o>', '<C-w>o', { silent = true }) -- User <C-w>o instead

-- -- Explore management
-- keymap.set('n', '<leader>E', '<cmd>Explore<CR>', {desc = 'Open Explore window'})
-- keymap.set('n', '<leader>L', '<cmd>Lexplore<CR>', {desc = 'Open Explore window'})

