vim.g.mapleader = ','
local keymap = vim.keymap

keymap.set('n', '<leader>w', '<cmd>w<CR>', { silent = true })
keymap.set({ 'n', 'v' }, '0', '^', { silent = true })
keymap.set({ 'n', 'v' }, '^', '0', { silent = true })

-- Buffers Management (`<leader>b` prefix)
keymap.set('n', '<leader>bb', ':buffers<CR>:b<SPACE>', { silent = true })
keymap.set('n', '<leader>bo', '<CMD>%bd | e#<CR>', { silent = true })

-- Tabs Management (`<A-> prefix`)
--[[
keymap.set('n', '<A-n>', '<CMD>tabnew<CR>', { silent = true })
keymap.set('n', '<A-h>', '<CMD>tabprev<CR>', { silent = true })
keymap.set('n', '<A-l>', '<CMD>tabnext<CR>', { silent = true })
keymap.set('n', '<A-H>', '<CMD>-tabmove<CR>', { silent = true })
keymap.set('n', '<A-L>', '<CMD>+tabmove<CR>', { silent = true })
keymap.set('n', '<A-d>', '<CMD>tabclose<CR>', { silent = true })
keymap.set('n', '<A-q>', '<CMD>tabclose<CR>', { silent = true })
keymap.set('n', '<A-o>', '<CMD>tabonly<CR>', { silent = true })
--]]

-- Windows Management
keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
keymap.set('n', '<C-Right>', '<CMD>vertical resize +5<CR>', { silent = true })
keymap.set('n', '<C-Left>', '<CMD>vertical resize -5<CR>', { silent = true })
keymap.set('n', '<C-Up>', '<CMD>resize +5<CR>', { silent = true })
keymap.set('n', '<C-Down>', '<CMD>resize -5<CR>', { silent = true })
keymap.set('n', '<leader>o', '<C-w>o', { silent = true })
-- keymap.set('n', '<leader>q', '<CMD>close<CR>', { silent = true })

-- -- Explore Management
-- let g:netrw_liststyle = 3
-- let g:loaded_netrw = 0
-- keymap.set('n', '<leader>E', '<cmd>Explore<CR>', { silent = true })
-- keymap.set('n', '<leader>L', '<cmd>Lexplore<CR>', { silent = true })

