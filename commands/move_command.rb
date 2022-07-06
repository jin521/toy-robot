class MoveCommand
  def initialize(robot=nil, table=nil)
    @robot = robot
    @table = table
  end

  def execute
    new_location = @robot.current_location.move

    @robot.current_location = new_location if @table.position_valid?(new_location)
  end
end