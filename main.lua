if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
  require("lldebugger").start()
end

function love.load()
  TileSize = 32

  Scale = 4

  Background = love.graphics.newImage("assets/Tiles/Grass_Middle.png")

  Player = {}
  Player.x = 400
  Player.y = 200
  Player.speed = 3
  Player.sprite = love.graphics.newImage("assets/Player/Player.png")
  Player.sprite:setFilter("nearest", "nearest")
  Player.quad = love.graphics.newQuad(0, 0, TileSize, TileSize, Player.sprite:getDimensions())
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    Player.x = Player.x + Player.speed
  end
  if love.keyboard.isDown("left") then
    Player.x = Player.x - Player.speed
  end
  if love.keyboard.isDown("down") then
    Player.y = Player.y + Player.speed
  end
  if love.keyboard.isDown("up") then
    Player.y = Player.y - Player.speed
  end
end

function love.draw()
  for y = 0, 100, 1 do
    for x = 0, 100, 1 do
      love.graphics.draw(Background, TileSize * x, TileSize * y, 0, Scale, Scale)
    end
  end

  love.graphics.draw(Player.sprite, Player.quad, Player.x, Player.y, 0, Scale, Scale)
end
