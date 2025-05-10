return {
  'nvim-lualine/lualine.nvim',
  event = { 'VeryLazy' },
  config = function()
    local lualine = require('lualine')
    lualine.setup {
      options = {
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = {
          {
            'mode',
            -- fmt = function(str) return str:sub(1, 1) end,
            padding = 1
          }
        },
        lualine_b = {
          -- Icon for git: 
          { 'branch', icon = '', padding = 1 },
          { 'diff', padding = 0 },
          {
            'diagnostics',

            -- Table of diagnostic sources, available sources are:
            --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
            -- or a function that returns a table as such:
            --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
            sources = { 'nvim_diagnostic', 'coc' },

            -- Displays diagnostics for the defined severity types
            sections = { 'error', 'warn', 'info', 'hint' },

            diagnostics_color = {
              -- Same values as the general color option can be used here.
              error = 'DiagnosticError', -- Changes diagnostics' error color.
              warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
              info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
              hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
            },
            symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
            -- symbols = {error = ' ', warn = ' ', info = '󰠠 ', hint = ' '},
            colored = true,           -- Displays diagnostics status in color if set to true.
            update_in_insert = false, -- Update diagnostics in insert mode.
            always_visible = false,   -- Show diagnostics even if there are none.
            -- fmt = function(res) return res .. ' ' end,
            padding = {left = 1, right = 0},
          }
        },
        lualine_c = { { 'filename', padding = 1 } },
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {
          -- {
          --   function() return vim.api.nvim_get_option_value("tabstop", {}) .. '>' end,
          --   padding = 0,
          -- },
          { 'encoding', padding = {left = 0, right = 1} },
          { 'filetype', icon_only = true, padding = 0 },
        },
        lualine_y = { },
        lualine_z = { { 'progress', padding = 0 } },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { 'oil', 'nvim-tree', 'toggleterm', 'lazy', 'mason', 'neo-tree' }
    }
  end
}
