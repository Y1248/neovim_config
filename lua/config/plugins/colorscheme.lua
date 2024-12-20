return {
  'Mofiqul/vscode.nvim',
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      style = 'dark',
      group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightBlue, bold=true },
      }
    })
    vim.cmd('colorscheme vscode')
  end
}
