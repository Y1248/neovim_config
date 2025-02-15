return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = true,
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>ee', '<CMD>Neotree toggle<CR>', { silent = true } },
    { '<leader>ef', '<CMD>Neotree reveal=true toggle<CR>', { silent = true } },
  },
  config = function()
    require('neo-tree').setup({
      window = {
        width = 25,
      }
    })
  end
}
