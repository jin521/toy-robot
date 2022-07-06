class Commander
  def initialize(robot, table)
    @robot = robot
    @table = table
  end

  def interpret(command)
    case 
    when command.split.include?('PLACE')
      x = command.split(',')[0].split(' ')[1].to_i
      y = command.split(',')[1].to_i
      direction = command.split(',')[2].strip

      curent_location = Position.new(x, y, direction)
      @robot.current_location = curent_location
    when command.split.include?('MOVE')
      new_location = @robot.current_location.move(@robot.current_location.direction)
      @robot.current_location = new_location
    when command.split.include?('LEFT')
      @robot.current_location = Postion.new(@robot.current_location.x_position, @robot.current_location.y_position, @robot.current_location.direction_left)
    when command.split.include?('RIGHT')
      @robot.current_location = Postion.new(@robot.current_location.x_position, @robot.current_location.y_position, @robot.current_location.direction_right)
    when command.split.include?('REPORT')
      puts @robot.report_current_location
    end
  end
end