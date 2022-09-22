local function changeColor(hex, offset)
  hex = hex:gsub('#', '')

  return '#'
    .. string.format('%x', tonumber('0x' .. hex:sub(1, 2)) + offset)
    .. string.format('%x', tonumber('0x' .. hex:sub(3, 4)) + offset)
    .. string.format('%x', tonumber('0x' .. hex:sub(5, 6)) + offset)
end

local base16 = {
  base00 = '#1e222a',
  base01 = '#252931',
  base02 = '#3e4451',
  base03 = '#545862',
  base04 = '#565c64',
  base05 = '#abb2bf',
  base06 = '#b6bdca',
  base07 = '#eeffff',
  base08 = '#f78c6c',
  base09 = '#d19a66',
  base0A = '#ecc48d',
  base0B = '#addb67',
  base0C = '#7fdbca',
  base0D = '#82aaff',
  base0E = '#c792ea',
  base0F = '#be5046',
}

base16.base00_X = changeColor(base16.base00, -3)

return base16
