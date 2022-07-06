class RightCommand
  def initialize(robot = nil)
    @robot = robot
  end

  def execute
    @robot.current_location = @robot.current_location.rotate_right
  end
end
