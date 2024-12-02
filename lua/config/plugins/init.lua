return {
  'nvim-lua/plenary.nvim',
  {
    'nvim-tree/nvim-web-devicons',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local devicon = require('nvim-web-devicons')
      devicon.setup{
        strict = true,
        override_by_extension = {
          ['typ'] = {
            icon = '',
            color = '#2D92BC',
            name = 'typ'
          }
        },
      }
    end
  }
}
