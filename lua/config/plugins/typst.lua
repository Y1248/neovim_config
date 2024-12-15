return {
  ---[[
  { -- Quick preview for typst files
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
    version = '1.*',
    opts = {},
    config = function()
      require('typst-preview').setup({
        dependencies_bin = {
          ['tinymist'] = 'tinymist-win32-x64.exe',
          ['websocat'] = 'websocat.x86_64-pc-windows-gnu.exe',
        }
      })
    end
  },
  --]]
  { -- typst support for neovim
    'kaarmu/typst.vim',
    ft = 'typst',
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
  },
}
