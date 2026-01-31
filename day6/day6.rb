# day 6
# loops and array methods 

arr = [2, 4, 6, 8, 10, 12]
# for loop with range
# ".." includes the last value also
for i in 10..15
  print i
end

# while loop
# need to initialize first
i = 0
while i <= 10
  puts i
  i += 1
end

# loop do
# this will run forever unless we break it
k = 0
loop do
  puts "student : #{k}"
  k += 1
  break if k > 5
end

# until loop
# this runs until the condition is true
# opposite of while
c = 0
until c > 5
  puts c
  c += 1
end

# next keyword
# it skips the current iteration
for i in 1..5
  next if i == 3
  puts i
end


arr = [1, 2, 3, 4, 5]
# select, original array will change. it selects values based on condition.
# reject, removes values that match condition
# map and collect return new array
# each returns original array
select_arr = arr.select { |n| n > 2 }
reject_arr = arr.reject { |n| n.even? }
map_arr = arr.map { |n| n * 2 }
each_arr = arr.each { |n| puts n }
puts "Original array: #{arr}"
puts "Selected array: #{select_arr}"
puts "Rejected array: #{reject_arr}"
puts "Mapped array: #{map_arr}"
puts "Each array: #{each_arr}"

#redo keyword
#it was the most confusing for me, but figured it out. i would to explain it as, redo is like retry but without re-evaluating the condition of the loop.
=begin
This is te example i started off with, lost my mind since it is an infinite loop and start questioning whats the use of redo if it gives infinite loop .
redo cant be used like this in real world scenario. it can be used in a scenario, when you want to repeat the same step or retry until a certain condition is met.
# i = 0
# while i < 3
#   puts i
#   redo if i == 0
#   i += 1
# end
=end

loop do
  puts "enter a number less than 3"
  num = gets.chomp.to_i

  if num < 3
    puts "okay"
    break
  else
    puts "try again"
    redo
  end
end
