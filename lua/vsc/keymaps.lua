vim.g.mapleader = ','
local keymap = vim.keymap
local vscode = require('vscode')

keymap.set('n', '<leader>w', '<CMD>w<CR>', { silent = true })

-- Windows navigation
keymap.set({'n', 'v'}, '<C-h>', function() vscode.call('workbench.action.navigateLeft') end, {silent = true})
keymap.set({'n', 'v'}, '<C-l>', function() vscode.call('workbench.action.navigateRight') end, {silent = true})
keymap.set({'n', 'v'}, '<C-j>', function() vscode.call('workbench.action.navigateDown') end, {silent = true})
keymap.set({'n', 'v'}, '<C-k>', function() vscode.call('workbench.action.navigateUp') end, {silent = true})
keymap.set('n', '<leader>o', '<C-w>o', { silent = true })

keymap.set('n', '<A-n>', '<CMD>Tabnew<CR>', { silent = true })
keymap.set('n', '<A-h>', '<CMD>Tabprev<CR>', { silent = true })
keymap.set('n', '<A-l>', '<CMD>Tabnext<CR>', { silent = true })
keymap.set('n', '<A-d>', '<CMD>Tabclose<CR>', { silent = true })
keymap.set('n', '<A-q>', '<CMD>Tabclose<CR>', { silent = true })

