$LOAD_PATH.unshift File.dirname(__FILE__)

require 'byebug'
require 'table'
require 'robot'
require 'position'
require 'commander'

table = Table.new
robot = Robot.new
commander = Commander.new(robot, table)

puts 'please enter your commands and start the game!'

input_array = ARGV

command = input_array[0]
puts command

if input_array.length > 1
  args = input_array[1].split(',')
  puts args[0]
  puts args[1]
  puts args[2]
end

loop do
  puts "type your command (one command at a time, enter EXIT to quit the game)"

  input = gets.chomp

  commander.interprete(input)

  break if input =~ /exit/i
end

