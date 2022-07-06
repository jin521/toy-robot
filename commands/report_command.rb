class ReportCommand
  def initialize(robot=nil)
    @robot = robot
  end

  def execute
    @robot.report_current_location
  end
end
