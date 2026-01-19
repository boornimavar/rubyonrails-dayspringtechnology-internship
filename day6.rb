# # students_id = [1, 2, 3, 4, 5, 6]
# # for i in 10..15
# #     puts i+10
# # end

# # #for loop w array
# # for i in students_id
# #     puts i
# # end

# # #for loop w range and condition
# # for i in students_id
# #     if i <5
# #         puts i
# #     end
# # end

# #loop
# loop do
#     puts "This will run forever"
#     break
# end

# loop do students_id
#     puts students_id
#     break if students_id.length <= 3
#     students_id.pop
# end

# # loop students_id do 
# #     puts i if i <5
# # end

# #until 

# #while loop

# redo in intertaor condition
# next in interator conditon

# for i in i..5
#     puts i
#     break if i == 3
#     redo if i<2
# end

# students_id = [1, 2, 3, 4, 5, 6]

# students_id.each do |id|
#   puts id
#   break if id == 3
# end

# for i in 1..5
#     puts i
#     break if i == 3
#     redo if i<3
# end

# def question (quest , ans )
#   1.times do
#     puts quest
#     a = gets.chomp
#     if a == ans
#       puts "good job"
#     else
#       puts "Try Again!"
#       redo
#     end
#   end
# end

# question("What is 2 + 2 ?" , "4")

#transform arr
#each
#select
#reject
#map
#all
#inject

arr = [1,2,3,4,5,6]

# puts arr.select {|num| num > 3}
# odd_arr =  arr.select {|num| num.odd?}
# print odd_arr

# puts arr.reject {|num| num > 3}



# # we are making transformation to copy of the arr
# # to make chanes in oriinal arr use map!!
# arr.map! {|num| num*3}

# #opposite of all is any
# puts arr.all? {|num| num > 0}

# map, eac and colect-> similar methods, but colect is faster than map and each
# map vs collect vs each
map_mutiples = arr.map {|num| num*2}
print map_mutiples
each_mutiples = arr.each{|num| num*2}
print each_mutiples
collect_mutiples = arr.collect {|num| num*2}
print collect_mutiples