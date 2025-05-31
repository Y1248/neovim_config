if vim.g.vscode then
  -- vscode about configuration
  require('vsc')
else
  require('config.core')
  require('config.lazynvim')
end
