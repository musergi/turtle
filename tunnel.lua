width = arg[0]
height = arg[1]
depth = arg[2]

remaining_depth = depth
while remaining_depth > 0 do
	turtle.dig()
	turtle.forward()
	turtle.turnRight()
	remaining_height = height
	while remaining_height < 0 do
		for i=1,width-1 do
			turtle.dig()
			turtle.forward()
		end
		if (remaining_height ~= 1) then
			turtle.turnLeft()
			turtle.turnLeft()
			turtle.digUp()
		end
		remaining_height -= 1
	end
	remaining_depth -= 1
end