return {
  ---[[
  'akinsho/bufferline.nvim',
  event = { 'VeryLazy' },
  after = 'catppuccin',
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        style_preset = bufferline.style_preset.no_italic,
        mode = 'buffers',
        separator_style = {'', ''}, -- 'thin',
        always_show_bufferline = false,
        show_duplicate_prefix = false,
        indicator = {
          -- icon = '',
          style = 'none', -- 'icon' | 'underline' | 'none'
        },
        tab_size = 5,
        -- numbers = 'ordinal',
        buffer_close_icon = '󱎘', -- 󱎘 
        modified_icon = '',
        close_icon = '󱎘',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = false,
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    })

    local keymap = vim.keymap
    -- Buffer management
    for i = 1, 9 do
      keymap.set(
        "n",
        "<A-" .. tostring(i) .. ">",
        "<Cmd>BufferLineGoToBuffer " .. tostring(i) .. "<CR>",
        { silent = true }
      )
    end
    keymap.set("n", "<A-0>", "<CMD>BufferLineGoToBuffer -1<CR>", { silent = true })
    keymap.set("n", "<A-l>", "<CMD>BufferLineCycleNext<CR>", { silent = true })
    keymap.set("n", "<A-h>", "<CMD>BufferLineCyclePrev<CR>", { silent = true })
    keymap.set("n", "<A-H>", "<CMD>BufferLineMovePrev<CR>", { silent = true })
    keymap.set("n", "<A-L>", "<CMD>BufferLineMoveNext<CR>", { silent = true })
    keymap.set('n', '<A-d>', '<CMD>bdelete!<CR>', { silent = true })
    keymap.set('n', '<leader>q', '<CMD>bdelete!<CR>', { silent = true })
    keymap.set('n', '<A-o>', '<CMD>BufferLineCloseOthers<CR>', { silent = true })
    keymap.set('n', '<leader>br', '<CMD>BufferLineCloseRight<CR>', { silent = true })
    keymap.set('n', '<leader>bl', '<CMD>BufferLineCloseLeft<CR>', { silent = true })
  end
  --]]
}
