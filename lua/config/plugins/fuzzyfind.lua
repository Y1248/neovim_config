return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
  },
  keys = {
    { '<C-p>', '<CMD>Telescope find_files<CR>', desc = 'Find files' },
    { '<leader>ff', '<CMD>Telescope find_files<CR>', desc = 'Find files' },
    { '<leader>fs', '<CMD>Telescope live_grep<CR>', desc = 'Find strings' },
    { '<leader>fb', '<CMD>Telescope buffers<CR>', desc = 'Find buffers' },
    { '<leader>fr', '<CMD>Telescope resume<CR>', desc = 'Find resume' },
    { 'gR', '<CMD>Telescope lsp_references<CR>', desc = 'Lsp references' },
    { 'gd', '<CMD>Telescope lsp_definitions<CR>', desc = 'Lsp definitions' },
    { 'gk', '<CMD>Telescope lsp_implementations<CR>', desc = 'LSP implementations' },
    { 'gt', '<CMD>Telescope lsp_type_definitions<CR>', desc = 'LSP type definitions' },
    { '<leader>D', '<CMD>Telescope diagnostics<CR>', desc = 'LSP diagnostics' },
  },
  config = function()
    require('telescope').setup({})
  end
}
