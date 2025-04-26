return {
  ---[[
  { -- Quick preview for typst files
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
    keys = {
      {'<leader>tp', '<CMD>TypstPreviewStop<CR><CMD>TypstPreview<CR>', { silent = true }},
      {'<leader>ts', '<CMD>TypstPreviewStop<CR>', { silent = true }},
    },
    version = '1.*',
    opts = {},
    config = function()
      require('typst-preview').setup({
        dependencies_bin = {
          ['tinymist'] = 'tinymist.exe',
          ['websocat'] = 'websocat.exe',
        }
      })
    end
  },
  --]]
  --[[
  { -- typst support for neovim
    'kaarmu/typst.vim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
  },
  --]]
}
