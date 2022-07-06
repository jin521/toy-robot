class Table
  attr_reader :length, :width

  MAX_DIMENSION = 5

  def initialize(length = MAX_DIMENSION, width = MAX_DIMENSION)
    @length = length
    @width = width
  end

  def position_valid?(position)
    (position.x_position < @length && position.x_position >= 0) && (position.y_position < @width && position.y_position >= 0)
  end
end
