require 'byebug'

class Position
  attr_reader :x_position, :y_position, :direction

  DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze

  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_position = y_position
    @direction = direction
  end

  def move
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

  def rotate_left
    # rotate the robot 90 degrees in LEFT
    current_index = DIRECTIONS.find_index(direction)
    index_after_rotate = current_index - 1
    new_direction = DIRECTIONS[index_after_rotate]
    Position.new(@x_position, @y_position, new_direction)
  end

  def rotate_right
    # rotate the robot 90 degrees in RIGHT
    current_index = DIRECTIONS.find_index(direction)
    index_after_rotate = if current_index == DIRECTIONS.length - 1
                           0
                         else
                           current_index + 1
                         end

    new_direction = DIRECTIONS[index_after_rotate]
    Position.new(@x_position, @y_position, new_direction)
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
