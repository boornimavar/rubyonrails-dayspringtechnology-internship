# put vs print
p "hello"
print "hello \n"

# str interpoation
name = 'san'
puts "hello #{name}"

# single line cmd and multi line cmd
# This is a single line comment
=begin
This is a multi-line comment
puts "This is inside a multi-line comment"
=end

# symbol vs str
=begin
str is mutable but symbol is immutable, obj id of str changes on reinitialization but symbol obj id remains same
=end

@int_dt = 10
puts @int_dt.class
@float_dt = 10.5
puts @float_dt.class
@str_dt = "hello"
puts @str_dt.class
@sym_dt = :hello_sym
puts @sym_dt.class
@arr_dt = [1, 2, 3]
puts @arr_dt.class
@hash_dt = {key1: "value1", key2: "value2"}
puts @hash_dt.class
@bool_dt = true
puts @bool_dt.class
@nil_dt = nil
puts @nil_dt.class

#prompt for input / input method
=begin
gets -> input from user
chomp -> removes the new line character, you can add multiple methods like chomp, to_i, to_f etc
it is called method chaining.
=end
puts "Enter your name:"
name = gets.chomp.capitalize
num1 = gets.chomp.to_i
num2 = gets.chomp.to_i
sum = num1 + num2
puts "Hello #{name}, the sum of #{num1} and #{num2} is #{sum}"
