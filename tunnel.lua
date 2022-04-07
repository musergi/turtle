width = tonumber(arg[1])
height = tonumber(arg[2])
depth = tonumber(arg[3])

remaining_depth = depth
while remaining_depth > 0 do
	turtle.dig()
	turtle.forward()
	turtle.turnRight()
	remaining_height = height
	while remaining_height > 0 do
		for i=1,width-1 do
			turtle.dig()
			turtle.forward()
		end
		if remaining_height ~= 1 then
			turtle.turnLeft()
			turtle.turnLeft()
			turtle.digUp()
			turtle.up()
		end
		remaining_height = remaining_height - 1
	end
	if height % 2 == 0 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end
	for i=1,height-1 do
		turtle.down()
	end
	remaining_depth = remaining_depth - 1
end