class ToyRobot

  attr_accessor :x, :y, :facing

  FACING = %w(NORTH EAST SOUTH WEST)

  TABLE_SIZE = 4

  def place(x,y,facing)
    if x >= 0 && x <= TABLE_SIZE && y >= 0 && y <= TABLE_SIZE && FACING.include?(facing)
      @x = x
      @y = y
      @facing = facing
    end
  end

  def move
    case @facing
    when "NORTH"
      @y += 1 if @y < TABLE_SIZE
    when "SOUTH"
      @y -= 1 if @y > 0
    when "EAST"
      @x += 1 if @x < TABLE_SIZE
    when "WEST"
      @x -= 1 if @x > 0
    end
  end

  def left
    index = FACING.index(@facing)
    @facing = FACING.rotate(-1)[index]
  end

  def right
    index = FACING.index(@facing)
    @facing = FACING.rotate(1)[index]
  end

  def report
    return "#{@x},#{@y},#{@facing}" if @x && @y
    "Not placed"
  end
end

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