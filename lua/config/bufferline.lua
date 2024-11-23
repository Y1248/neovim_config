local status, bufferline = pcall(require, 'bufferline')
if not status then
  print('bufferline cannot be loaded correctly.')
  return
end

bufferline.setup()
