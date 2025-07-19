return {
  --[[
  'akinsho/toggleterm.nvim',
  keys = {
    { '<leader>tt', '<CMD>ToggleTerm<CR>', { silent = true } },
    { '<C-\\>', '<CMD>ToggleTerm<CR>', { silent = true } },
    { '<leader>t2', "<CMD>lua require('toggleterm').exec('', 2)<CR>", { silent = true } },
    { '<leader>t3', "<CMD>lua require('toggleterm').exec('', 3)<CR>", { silent = true } },
    { '<leader>t4', "<CMD>lua require('toggleterm').exec('', 4)<CR>", { silent = true } },
    { '<leader>t5', "<CMD>lua require('toggleterm').exec('', 5)<CR>", { silent = true } },
  },
  config = function()
    require('toggleterm').setup({
      open_mapping = [<c-\>],
      shell = 'nu.exe',
    })
    vim.keymap.set('t', '<esc>', [<C-\><C-n>], { silent = true })
  end
  --]]
}
