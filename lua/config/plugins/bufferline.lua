return {
  'akinsho/bufferline.nvim',
  event = { 'VeryLazy' },
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
        indicator = {
          -- icon = '',
          style = 'icon',
        },
        tab_size = 10,
        -- numbers = 'buffer_id',
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
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
