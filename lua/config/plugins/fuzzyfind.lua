return {
  {
    'echasnovski/mini.pick',
    cmd = { 'Pick' },
    dependencies = {
      'echasnovski/mini.extra',
    },
    keys = {
      { '<C-p>', '<cmd>Pick files<cr>',  desc = 'Fuzzy find files' },
      { '<leader>ff', '<cmd>Pick files<cr>',  desc = 'Fuzzy find files' },
      { '<leader>fr', '<cmd>Pick resume<cr>',  desc = 'Resume last search result' },
      { '<leader>fs', '<cmd>Pick grep_live<cr>',  desc = 'Find string' },
    },
    config = function()
      require('mini.pick').setup({
        window = {
          prompt_cursor = '█',
          prompt_prefix = '',
        }
      })
      require('mini.extra').setup({})
    end
  },
  --[[
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { '<leader>ff', '<CMD>FzfLua files<CR>', { slient = true } },
      { '<leader>fb', '<CMD>FzfLua buffers<CR>', { slient = true } },
      { '<leader>fs', '<CMD>FzfLua grep<CR>', { silent = true } },
      { '<leader>fc', '<CMD>FzfLua grep_cword<CR>', { silent = true } },
      { '<leader>fr', '<CMD>FzfLua resume<CR>', { silent = true } },
    },
    opts = {},
  }
  --]]
}
