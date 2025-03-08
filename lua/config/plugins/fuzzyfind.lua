return {
  --[[
  {
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
  },
  --]]
  {
     'echasnovski/mini.pick',
     cmd = { 'Pick' },
     dependencies = {
       'echasnovski/mini.extra',
     },
     keys = {
       { '<C-p>', '<CMD>Pick files<CR>',  desc = 'Fuzzy find files' },
       { '<leader>ff', '<CMD>Pick files<CR>',  desc = 'Fuzzy find files' },
       { '<leader>fs', '<CMD>Pick grep_live<CR>',  desc = 'Find string' },
       { '<leader>fb', '<CMD>Pick buffers<CR>', desc = 'Find in buffers' },
       { '<leader>fr', '<CMD>Pick resume<CR>',  desc = 'Resume last search result' },
       { 'gR', function() require('mini.extra').pickers.lsp({scope = 'references'}) end, desc = 'Find lsp references' },
       { 'gd', function() require('mini.extra').pickers.lsp({scope = 'definition'}) end, desc = 'Find lsp definition' },
       { 'gD', function() require('mini.extra').pickers.lsp({scope = 'declaration'}) end, desc = 'Find lsp declaration' },
       { 'gk', function() require('mini.extra').pickers.lsp({scope = 'implementation'}) end, desc = 'Find lsp implementations' },
       { 'gt', function() require('mini.extra').pickers.lsp({scope = 'type_definition'}) end, desc = 'Find lsp type_definition' },
       { '<leader>D', function() require('mini.extra').gen_ai_spec.diagnostic() end, desc = 'Find lsp diagnostics' },
     },
     config = function()
       require('mini.pick').setup({
         window = {
           prompt_cursor = '█',
           prompt_prefix = ' ',
         }
       })
       require('mini.extra').setup({})
     end
   },
}
