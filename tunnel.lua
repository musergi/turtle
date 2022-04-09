width = tonumber(arg[1])
height = tonumber(arg[2])
depth = tonumber(arg[3])


dir_x = 1 -- 1: right, -1: left
dir_y = 1 -- 1: up, -1: down

function advance(distance)
	for i=1,distance do
		repeat
			turtle.dig()
		until (turtle.forward())
	end
end

remaining_depth = depth
while remaining_depth > 0 do
	turtle.dig()
	turtle.forward()
	
	if dir_x == 1 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end

	y_advance = 0
	while y_advance < height do
		advance(width - 1)
		turtle.turnLeft()
		turtle.turnLeft()
		dir_x = -dir_x

		if y_advance ~= height - 1 then
			if dir_y == 1 then
				turtle.digUp()
				turtle.up()
			else
				turtle.digDown()
				turtle.down()
			end
		end
		y_advance = y_advance + 1
	end
	dir_y = -dir_y

	if dir_x == 1 then
		turtle.turnLeft()
	else
		turtle.turnRight()
	end

	remaining_depth = remaining_depth - 1
end