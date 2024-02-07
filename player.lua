-- code by axunaattori
 
local component = require("component")
local gpu = component.gpu
local term = require("term")
local kb = require("keyboard")
 
playerx = 30
playery = 40
 
speed = 1
 
function drawplayer()
  term.setCursor(playerx-1, playery-1)
  gpu.setBackground(0xFF0000)
  gpu.setForeground(0x000000)
  io.write("▙")
  gpu.setForeground(0x6F4E37)
  io.write("▀")
  gpu.setForeground(0x000000)
  io.write("▟")
  gpu.setBackground(0x000000)
  term.setCursor(playerx-1,playery)
  gpu.setBackground(0xFFFFFF)
  io.write("▛")
  gpu.setForeground(0xFF0000)
  io.write("▅")
  gpu.setForeground(0x000000)
  io.write("▜")
  term.setCursor(playerx-1, playery+1)
  gpu.setBackground(0xFF0000)
  io.write("▘ ▝")
  gpu.setBackground(0x000000)
end
 
function focus()
  if kb.isShiftDown() then
    speed = 0.5
    term.setCursor(playerx, playery)
    gpu.setBackground(0x800000)
    gpu.setForeground(0xFFFFFF)
    io.write("▣")
  else
    speed = 1
  end
end
 
drawplayer()
 
function mplayer()
  if kb.isKeyDown(0xC8) then
    playery = playery - speed
  elseif kb.isKeyDown(0xD0) then
    playery = playery + speed
  end
  if kb.isKeyDown(0xCB) then
    playerx = playerx - speed
  elseif kb.isKeyDown(0xCD) then
    playerx = playerx + speed
  end
end
