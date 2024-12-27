return {
  'echasnovski/mini.completion',
  event = { 'InsertEnter' },
  dependencies = {
    'echasnovski/mini.icons',
  },
  config = function()
    require('mini.icons').setup({ })
    require('mini.completion').setup({ })
  end
}
