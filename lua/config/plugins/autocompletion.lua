return {
  --[[
  {
    'hrsh7th/nvim-cmp',
    lazy = true,
    event = { 'InsertEnter' },
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      local cmp = require('cmp')
      local kind_icons = {
        Text = '󰉿',
        Method = '󰆧',
        Function = '󰊕',
        Constructor = '',
        Field = '󰜢',
        Variable = '󰀫',
        Class = '󰠱',
        Interface = '',
        Module = '',
        Property = '󰜢',
        Unit = '󰑭',
        Value = '󰎠',
        Enum = '',
        Keyword = '󰌋',
        Snippet = '',
        Color = '󰏘',
        File = '󰈙',
        Reference = '󰈇',
        Folder = '󰉋',
        EnumMember = '',
        Constant = '󰏿',
        Struct = '󰙅',
        Event = '',
        Operator = '󰆕',
        TypeParameter = '',
      }

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'nvim_lsp_signature_help' },
        }),
        confirm_opts = {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
        view = {
        },
        formatting = {
          format = function(entry, vim_item)
            local max_length = 36
            if string.len(vim_item.abbr) > max_length then
              vim_item.abbr = string.sub(vim_item.abbr, 1, max_length - 3) .. '...'
            end
            -- Kind icons
            vim_item.kind = string.format('%s', kind_icons[vim_item.kind]) -- This concatenates the icons
            -- Source
            vim_item.menu = ({
              -- buffer = '[Buffer]',
              -- nvim_lsp = '[LSP]',
              -- luasnip = '[LuaSnip]',
              -- nvim_lua = '[Lua]',
              -- latex_symbols = '[LaTeX]',
            })[entry.source.name]
            return vim_item
          end
        },
      })

      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
          { { name = 'path' } },
          { { name = 'cmdline' } }
        ),
        matching = { disallow_symbol_nonprefix_matching = false }
      })

    end
  },
  --]]
  {
    'saghen/blink.cmp',
    lazy = true,
    event = { 'InsertEnter' },
    dependencies = 'rafamadriz/friendly-snippets',
    version = "*",
    opts = {
      keymap = {
        preset = 'enter',
        -- ['<C-d>'] = { 'show', 'hide', 'show_documentation', 'hide_documentation' },
        -- ['<Up>'] = { 'snippet_backward', 'fallback' },
        -- ['<Down>'] = { 'snippet_forward', 'fallback' },
        -- ['<Tab>'] = { 'select_next', 'fallback' },
        -- ['<S-Tab>'] = { 'select_prev', 'fallback' },
      },
      cmdline = {
        completion = {
          menu = { auto_show = false },
        }
      },
      completion = {
        accept = { auto_brackets = { enabled = false }, },
        list = {
          selection = { preselect = function(ctx) return ctx.mode ~= 'cmdline' end },
          -- selection = { preselect = true, auto_insert = true },
        },
        menu = { auto_show = true, },
      },
      -- fuzzy = {
      --   prebuilt_binaries = {
      --     download = false,
      --     ignore_version_mismatch = true,
      --   },
      --   implementation = 'lua',
      -- },
      signature = { enabled = true, },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  }
}
