return {
  'echasnovski/mini.pick',
  cmd = { 'Pick' },
  dependencies = {
    'echasnovski/mini.icons',
    'echasnovski/mini.extra',
  },
  keys = {
    { '<leader>ff', '<cmd>Pick files<cr>',  desc = 'Fuzzy find files' },
    { '<leader>fr', '<cmd>Pick resume<cr>',  desc = 'Resume last search result' },
    { '<leader>fs', '<cmd>Pick grep_live<cr>',  desc = 'Find string' },
  },
  config = function()
    require('mini.pick').setup({
      window = {
        prompt_cursor = '█',
        prompt_prefix = '󰅂 ',
      }
    })
    require('mini.extra').setup({ })
  end
}
