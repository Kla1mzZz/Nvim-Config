local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

gls.left[1] = { 
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {'#00d6c8',colors.bg}
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL 󰆾', i = 'INSERT  ', c= 'COMMAND  ', v= 'VISUAL  ', V= 'VISUAL LINE '}
      return alias[vim.fn.mode()]
    end,
    highlight = {'#1bc2b7', colors.bg, 'bold'},
  },
}
