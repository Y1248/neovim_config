return {
  { -- Quick preview for typst files
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
    version = '1.*',
    opts = {},
  },
  { -- typst support for neovim
    'kaarmu/typst.vim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
  },
}
