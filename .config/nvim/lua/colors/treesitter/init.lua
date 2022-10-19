local modules = {
  'general',
  'html',
  'json',
  'php',
  'twig',
  'xml',
}

local result = {}

for _, module in pairs(modules) do
  local groups = require('colors.treesitter.' .. module)
  for _, value in pairs(groups) do
    table.insert(result, value)
  end
end

return result
