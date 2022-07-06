$LOAD_PATH.unshift File.dirname(__FILE__)

require 'byebug'
require 'table'
require 'robot'
require 'position'
require 'commander'

table = Table.new
robot = Robot.new
commander = Commander.new(robot, table)

loop do
  puts 'type your command (one command at a time, enter EXIT to quit the game)'

  input = gets.chomp

  commander.interprete(input)

  break if input =~ /exit/i
end
