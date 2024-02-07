-- code by axunaattori
 
local term = require("term")
local component = require("component")
local gpu = component.gpu
local kb = require("keyboard")
local player = require("player")
local stats = require("stats")
 
gpu.setResolution(105, 50)
 
local w, h = gpu.getResolution()
 
gpu.setBackground(0x000000)
gpu.fill(1, 1, w, h, " ")
 
gpu.setBackground(0x00FF00)
gpu.fill(1, 1, 10, h, " ")
gpu.fill(1, 1, w, 6, " ")
gpu.fill(1, h-4, w, 6, " ")
gpu.fill(60, 1, w, h, " ")
gpu.setForeground(0x0000FF)
term.setCursor(70, h-10, 1, 100)
print("東方 オープンコンピューターズ編")
term.setCursor(70, h-8, 1, 100)
print("Touhou Open Computers Edition")
 
x = {}
y = {}
local ax = {}
local ay = {}
typex = {} -- ARE YOU HAPPY NOW OPENOS???
 
function removetable(i)
  table.remove(x, i)
  table.remove(y, i)
  table.remove(ax, i)
  table.remove(ay, i)
  table.remove(typex, i)
end
 
update()
 
while true do
  gpu.setBackground(0x000000)
  gpu.fill(11, 7, 49, 39, " ")
  if kb.isKeyDown(0x39) then
    table.insert(x, 30)
    table.insert(y, h/2)
    table.insert(ax, math.random() * 2 - 1)
    table.insert(ay, math.random() * 2 - 1)
    table.insert(typex, math.random(1, 2))
  end
  if kb.isKeyDown(0x10) then
    gpu.setResolution(160, 50)
    os.exit()
  end
  mplayer()
  drawplayer()
  focus()
  gpu.setForeground(0xFFFFFF)
  gpu.setBackground(0xFF0000)
  if #x ~= 0 then
    local i = 1
    while i <= #x do
      if playerx + 0.4 > x[i] and playerx - 0.4 < x[i] and playery + 0.4 > y[i] and playery - 0.4 < y[i] then
        print("AAAAAAAAAAAAAAAAAAAA")
      end
      x[i] = x[i] + ax[i]
      y[i] = y[i] + ay[i]
      if x[i] < 11 or x[i] > 60 or y[i] < 7 or y[i] > h-4 then
        removetable(i)
      else
        gpu.fill(x[i], y[i], 1, 1, "▮")
      i=i+1
      end
    end
  end
  os.sleep(0.05)
end
