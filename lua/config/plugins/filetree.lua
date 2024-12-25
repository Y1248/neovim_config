return {
  'nvim-tree/nvim-tree.lua',
  lazy = true,
  keys = {
    { '<leader>L', '<cmd>NvimTreeToggle<CR>', desc = 'NvimTreeToggle'},
    { '<leader>ee', '<cmd>NvimTreeToggle<CR>', desc = 'NvimTreeToggle'},
    { '<leader>ec', '<cmd>NvimTreeCollapse<CR>', desc = 'NvimTreeCollapse'},
    { '<leader>er', '<cmd>NvimTreeRefresh<CR>', desc = 'NvimTreeRefresh'},
    { '<leader>ef', '<cmd>NvimTreeFindFile<CR>', desc = 'NvimTreeFindFile'},
  },
  config = function()
    local nvimtree = require('nvim-tree')

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = { width = 25, },
      -- change folder arrow icons
      renderer = {
        indent_markers = { enable = true, },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '', -- arrow when folder is closed
              arrow_open = '', -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '^\\.git', },
      },
      git = { ignore = false, },
    })
  end
}
