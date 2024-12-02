return {
  { -- Quick preview for typst files
    'chomosuke/typst-preview.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    ft = 'typst',
    version = '1.*',
    opts = {},
  },
  { -- typst support for neovim
    'kaarmu/typst.vim',
    ft = 'typst',
    event = { 'BufReadPre', 'BufNewFile' },
  },
}
