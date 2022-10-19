local libs = {}

function libs.has_value(tbl, val)
  for _, v in pairs(tbl) do
    if v == val then
      return true
    end
  end
  return false
end

function libs.check_lsp_active()
  local active_clients = vim.lsp.get_active_clients()
  if next(active_clients) == nil then
    return false, '[lspsaga] No lsp client available'
  end
  return true, nil
end

function libs.result_isempty(res)
  if type(res) ~= 'table' then
    print '[Lspsaga] Server return wrong response'
    return
  end
  for _, v in pairs(res) do
    if next(v) == nil then
      return true
    end
    if not v.result then
      return true
    end
    if next(v.result) == nil then
      return true
    end
  end
  return false
end

function libs.split_by_pathsep(text, start_pos)
  local pattern = '//'
  local short_text = ''
  local split_table = {}
  for word in text:gmatch('[^' .. pattern .. ']+') do
    table.insert(split_table, word)
  end

  for i = start_pos, #split_table, 1 do
    short_text = short_text .. split_table[i]
    if i ~= #split_table then
      short_text = short_text .. '/'
    end
  end
  return short_text
end

function libs.get_lsp_root_dir()
  local active, msg = libs.check_lsp_active()
  if not active then
    print(msg)
    return
  end
  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.config.filetypes and client.config.root_dir then
      if type(client.config.filetypes) == 'table' then
        if libs.has_value(client.config.filetypes, vim.bo.filetype) then
          return client.config.root_dir
        end
      elseif type(client.config.filetypes) == 'string' then
        if client.config.filetypes == vim.bo.filetype then
          return client.config.root_dir
        end
      end
    end
  end
  return ''
end

return libs
