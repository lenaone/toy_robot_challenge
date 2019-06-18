require_relative 'toy_robot'

robot = ToyRobot.new
input = ''
while input !~ /EXIT/i

  puts "Type input(EXIT TO QUIT):"
  input = gets.chomp

  if input =~ /PLACE/
    if !input.split[1].nil?
      robot_direction = input.split[1].split(',')
      x = robot_direction[0].to_i
      y = robot_direction[1].to_i
      facing = robot_direction[2]
      robot.place(x,y,facing)
    end
  end

  if input =~ /MOVE/
    robot.move
  end

  if input =~ /LEFT/
    robot.left
  end

  if input =~ /RIGHT/
    robot.right
  end

  if input =~ /REPORT/
    puts robot.report
  end
end