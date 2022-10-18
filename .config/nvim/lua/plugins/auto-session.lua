local status, auto_session = pcall(require, 'auto-session')
if status then
  return
end

auto_session.setup {
  log_level = 'error',
}
