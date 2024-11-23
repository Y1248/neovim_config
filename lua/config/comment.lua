local status, comment = pcall(require, 'Comment')
if not status then
  print('Comment cannot be loaded correctly.')
  return
end

comment.setup()
