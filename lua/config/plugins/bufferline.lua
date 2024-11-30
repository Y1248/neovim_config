return {
  'akinsho/bufferline.nvim',
  dependencies = {'nvim-tree/nvim-web-devicons' },
  version = '*',
  opts = {
    options = {
      -- mode = 'tabs',
      separator_style = 'thin',
    }
  },

  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        separator_style = 'thin',
      },
    })

    local keymap = vim.keymap
    -- Buffer management
    keymap.set('n', '<C-h>', '<cmd>BufferLineCyclePrev<CR>', {desc = 'Go to the previous buffer'})
    keymap.set('n', '<C-l>', '<cmd>BufferLineCycleNext<CR>', {desc = 'Go to the next buffer'})
    keymap.set('n', '<leader>br', '<cmd>BufferLineCloseRight<CR>', {desc = 'Close right buffers'})
    keymap.set('n', '<leader>bl', '<cmd>BufferLineCloseLeft<CR>', {desc = 'Close left buffers'})
    keymap.set('n', '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', {desc = 'Close other buffers'})
    keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', {desc = 'Close current buffer'})
  end
}
