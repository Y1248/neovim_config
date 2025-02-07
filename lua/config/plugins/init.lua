return {
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local devicon = require('nvim-web-devicons')
      devicon.setup{
        strict = true,
        override_by_extension = {
          ['typ'] = {
            icon = '',
            color = '#2D92BC',
            name = 'typst'
          },
          ['pdf'] = {
            icon = '',
            color = '#2B7CD3',
            name = 'pdf',
          },
          -- ['m'] = {
          --   icon = '',
          --   color = '#CD5431',
          --   name = 'matlab',
          -- },
        },
      }
    end
  }
}
