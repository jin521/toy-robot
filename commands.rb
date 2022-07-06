$LOAD_PATH.unshift File.dirname(__FILE__)

require 'byebug'
require 'table'
require 'robot'
require 'position'
require 'invoker'

table = Table.new
robot = Robot.new
invoker = Invoker.new(robot, table)

loop do
  puts 'type your command (one command at a time, enter EXIT to quit the game)'

  input = gets.chomp

  command = invoker.interprete(input)
  command&.execute

  break if input =~ /exit/i
end
