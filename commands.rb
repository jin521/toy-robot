
input_array = ARGV

# puts input_array.length

command = input_array[0]
puts command
  
if input_array.length > 1
  args = input_array[1].split(',')
  puts command
  puts args[0]
  puts args[1]
  puts args[2]
end
