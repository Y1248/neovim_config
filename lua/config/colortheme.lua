local status, vscode = pcall(require, "vscode")
if not status then
  print("vscode.nvim cannot be loaded correctly.")
  return
end

vscode.setup()
vim.cmd.colorscheme "vscode"
