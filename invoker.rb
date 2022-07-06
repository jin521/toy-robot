require './commands/place_command'
require './commands/move_command'
require './commands/left_command'
require './commands/right_command'
require './commands/report_command'

class Invoker
  def initialize(robot, table)
    @robot = robot
    @table = table
  end

  def interprete(command)
    if command.split.include?('PLACE')
      x = command.split(',')[0].split(' ')[1].to_i
      y = command.split(',')[1].to_i
      direction = command.split(',')[2].strip

      curent_location = Position.new(x, y, direction)
      PlaceCommand.new(@robot, @table, curent_location)
    elsif command.split.include?('MOVE')
      MoveCommand.new(@robot, @table)
    elsif command.split.include?('LEFT')
      LeftCommand.new(@robot)
    elsif command.split.include?('RIGHT')
      RightCommand.new(@robot)
    elsif command.split.include?('REPORT')
      ReportCommand.new(@robot)
    end
  end
end
