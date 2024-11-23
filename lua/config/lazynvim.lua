-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

local status, lazy = pcall(require, 'lazy')
if not status then
  print('lazynvim cannot be loaded correctly.')
  return
end

-- Setup lazy.nvim
lazy.setup({
  'echasnovski/mini.pairs',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'numToStr/Comment.nvim',
  'akinsho/bufferline.nvim',
  'lewis6991/gitsigns.nvim',

  'lukas-reineke/indent-blankline.nvim',
  
  'Mofiqul/vscode.nvim',

  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- spec = {
    --   -- import your plugins
    --   -- { import = 'plugins' },
  -- },
  -- -- Configure any other settings here. See the documentation for more details.
  -- -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { 'habamax' } },
  -- -- checker = { enabled = true }, -- automatically check for plugin updates
})
