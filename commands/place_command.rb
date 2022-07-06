class PlaceCommand
  def initialize(robot=nil, table=nil, position=nil)
    @robot = robot
    @table = table
    @position = position
  end

  def execute
    @robot.current_location = @position if @table.position_valid?(@position)
  end
end