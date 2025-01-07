return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  keys = {
    { '<leader>ee', '<CMD>Neotree toggle=true<CR>', { silent = true } },
    { '<leader>ef', '<CMD>Neotree reveal=true<CR>', { silent = true } },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      default_component_configs = {
        indent = {
          padding = 0,
          indent_size = 2,
          with_expanders = true,
          expander_collapsed = '',
          expander_expanded = '',
        },
      },
      window = {
        width = 30,
      },
    })
  end
}
