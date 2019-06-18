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