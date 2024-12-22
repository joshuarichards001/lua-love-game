function love.load()
  player = {}
  player.x = 400
  player.y = 200
  player.speed = 3
  player.sprite = love.graphics.newImage("assets/Player/Player.png")
  player.quad = love.graphics.newQuad(0, 0, 32, 32, player.sprite:getDimensions())
  player.scale = 4
end

function love.update(dt)
  if love.keyboard.isDown("right") then
    player.x = player.x + player.speed
  end
  if love.keyboard.isDown("left") then
    player.x = player.x - player.speed
  end
  if love.keyboard.isDown("down") then
    player.y = player.y + player.speed
  end
  if love.keyboard.isDown("up") then
    player.y = player.y - player.speed
  end
end

function love.draw()
  love.graphics.draw(player.sprite, player.quad, player.x, player.y, 0, player.scale, player.scale)
end
