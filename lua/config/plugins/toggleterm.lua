return {
  'akinsho/toggleterm.nvim',
  keys = {
    { '<leader>tt', '<cmd>ToggleTerm<cr>', { silent = true } },
    { '<leader>tl', '<cmd>ToggleTermSendCurrentLine<cr>', { silent = true } },
  },
  config = function()
    require('toggleterm').setup({
      shell = 'pwsh.exe'
    })
  end
}
