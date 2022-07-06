class Table
  MAX_DIMENSION = 5

  def initialize(length = MAX_DIMENSION, width = MAX_DIMENSION)
    @length = length
    @width = width
  end

  def position_valid?(postion)
    (postion.x_postion < @length && postion.x_postion >= 0) && (postion.y_postion < @width && postion.y_postion >= 0)
  end
end
