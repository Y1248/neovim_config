return {
  {
    'folke/todo-comments.nvim',
    event = { 'BufReadPre', 'BufNewFile', 'InsertEnter' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('todo-comments').setup({
        highlight = {
          comments_only = false,
        }
      })
    end
  }
}
