return {
  'echasnovski/mini.completion',
  event = { 'InsertEnter' },
  config = function()
    require('mini.completion').setup({ })
  end
}
