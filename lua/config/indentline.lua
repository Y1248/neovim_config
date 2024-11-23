local status, indentline = pcall(require, 'ibl')
if not status then
  print('indent-blankline cannot be loaded correctly.')
  return
end

indentline.setup({
  indent = { char = "▏" }
})
