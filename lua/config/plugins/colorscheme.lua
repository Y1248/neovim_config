return {
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup({
        flavour = 'macchiato',
        show_end_of_buffer = true,
        no_italic = true,
        styles = {
          functions = { 'bold' },
          keywords = { 'bold' },
        },
        integrations = {
          diffview = true,
        }
      })
      vim.opt.background = 'dark'
      vim.cmd('colorscheme catppuccin')
    end
  },
}
