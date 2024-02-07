-- made by axunaattori
 
local component = require("component")
local gpu = component.gpu
local term = require("term")
 
sc = 2
lives = 2
score = 0
hs = 0
power = 1.00
function update()
  gpu.setBackground(0x00FF00)
  gpu.setForeground(0xFF00FF)
  
  term.setCursor(70, 10)
  io.write("LIVES: ")
  for i = 1, lives do
    io.write("♥")
    ix = i
  end
  gpu.setForeground(0x800080)
  for i = 1, 8-ix do
    io.write("♥")
  end
  gpu.setForeground(0x00BF00)
  term.setCursor(70, 12)
  io.write("SPELL CARD: ")
  for i = 1, sc do
    io.write("★")
    ix = i
  end
  gpu.setForeground(0x000040)
  for i = 1, 8-ix do
    io.write("★")
  end 
end
 
