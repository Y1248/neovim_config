if vim.g.vscode then
  -- VSCode about configuration
  require('vsc')
else
  -- NeoVIM about configuration
  require('config.core')
  require('config.lazynvim')
end
