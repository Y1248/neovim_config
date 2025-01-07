return {
  --[[
  {
    'Mofiqul/vscode.nvim',
    config = function()
      require('vscode').setup()
      vim.cmd('colorscheme vscode')
    end
  },
  --]]
  ---[[
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup({
        flavour = 'macchiato',
        show_end_of_buffer = true,
        no_italic = true,
        styles = {
          keywords = { 'bold' },
          functions = { 'bold' },
          booleans = { 'bold' },
          numbers = { 'bold' },
        },
        integrations = {
          diffview = true,
        }
      })
      -- vim.opt.background = 'light'
      vim.cmd('colorscheme catppuccin-latte')
    end
  },
  --]]
}
