-- made by axunaattori
 
local component = require("component")
local gpu = component.gpu
local term = require("term")
 
sc = 2
lives = 2
score = 0
hs = 0
power = 1.00
points = 632
 
function updatescore()
  term.setCursor(70, 8)
  gpu.setForeground(0xFFFFFF)
  gpu.setBackground(0x00FF00)
  io.write("Highscore  " .. hs)
  term.setCursor(70, 10)
  io.write("Score  " .. score)  
end
 
function updatepower()
  term.setCursor(73, 18)
  gpu.setForeground(0xFFFFFF)
  gpu.setBackground(0xFF0000)
  io.write("P")
  gpu.setBackground(0x00FF00)
  gpu.setForeground(0xFF0000)
  io.write(" Power  " .. power .. "/4.00")
end
function updatepoints()
  term.setCursor(73, 20)
  gpu.setForeground(0xFFFFFF)
  gpu.setBackground(0x0000FF)
  io.write("点")
  gpu.setBackground(0x00FF00)
  gpu.setForeground(0x0000FF)
  io.write(" Points  " .. points) 
end
 
function update()
  gpu.setBackground(0x00FF00)
  gpu.setForeground(0xFF00FF)
  
  term.setCursor(70, 13)
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
  term.setCursor(70, 15)
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
 
