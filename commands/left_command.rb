class LeftCommand
  def initialize(robot = nil)
    @robot = robot
  end

  def execute
    @robot.current_location = @robot.current_location.rotate_left
  end
end
