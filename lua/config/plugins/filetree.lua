return {
  --[[
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {'<leader>ee', '<cmd>Neotree toggle<CR>', desc = 'Neotree' },
    },
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup{
        window = {
          width = 30,
        }
      }
    end
  },
  --]]

  --[[
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    keys = {
      { '<leader>ee', '<cmd>NvimTreeToggle<CR>', desc = 'NvimTreeToggle'},
      { '<leader>ec', '<cmd>NvimTreeCollapse<CR>', desc = 'NvimTreeCollapse'},
      { '<leader>er', '<cmd>NvimTreeRefresh<CR>', desc = 'NvimTreeRefresh'},
    },
    config = function()
      local nvimtree = require("nvim-tree")

      -- recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup({
        view = { width = 30, },
        -- change folder arrow icons
        renderer = {
          indent_markers = { enable = true, },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "", -- arrow when folder is closed
                arrow_open = "", -- arrow when folder is open
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
  },
  --]]
}
