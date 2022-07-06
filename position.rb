class Postion
  attr_reader :x_position, :y_position, :direction

  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_postion = y_position
    @direction = direction
  end

  def move(direction)
    case direction
    when 'NORTH'
      move_north
    when 'SOUTH'
      move_south
    when 'WEST'
      move_west
    when 'EAST'
      move_east
    else
      'Error: given direction is invalid'
    end
  end

  private

  def move_north
    Position.new(@x_position, @y_position + 1, @direction)
  end

  def move_south
    Position.new(@x_position, @y_position + 1, @direction)
  end

  def move_west
    Position.new(@x_position - 1, @y_position, @direction)
  end

  def move_east
    Position.new(@x_position + 1, @y_position, @direction)
  end
end
