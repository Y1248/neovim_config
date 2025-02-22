return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<C-p>', '<CMD>Telescope find_files<CR>', desc = 'Find files' },
    { '<leader>ff', '<CMD>Telescope find_files<CR>', desc = 'Find files' },
    { '<leader>fs', '<CMD>Telescope live_grep<CR>', desc = 'Find strings' },
    { '<leader>fb', '<CMD>Telescope buffers<CR>', desc = 'Find buffers' },
    { '<leader>fr', '<CMD>Telescope resume<CR>', desc = 'Find resume' },
  },
  config = function()
    require('telescope').setup({})
  end
}
