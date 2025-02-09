return {
  {
    'echasnovski/mini.files',
    keys = {
      { '<leader>ee', function() require('mini.files').open() end, { silent = true }},
      { '<leader>ef', function() require('mini.files').open(vim.api.nvim_buf_get_name(0)) end, { silent = true }},
      { '<leader>er', function() require('mini.files').open(vim.api.nvim_buf_get_name(0), false) end, { silent = true }},
    },
    config = function()
      require('mini.files').setup({})
    end
  }
}
