# Basic output
print('first day of learning ruby!')
puts "\n"   # print does not add newline automatically

# String vs Symbol 
name = 'san'      # String is mutable
new_name = :san   # Symbol is immutable

puts name.class       # => String
puts new_name.class   # => Symbol


# Object ID comparison (before reinitialization)
5.times do
  puts name.object_id
end

10.times do
  puts new_name.object_id
end
puts name.object_id      # original object_id
puts new_name.object_id

# Reinitialization test
# String object_id may change after reinitialization
# Symbol object_id remains the same
name = name + 'kavi'     # creates a NEW string object
new_name = :cc2          # new symbol (still immutable)

5.times do
  puts name.object_id    # different from earlier
end

10.times do
  puts new_name.object_id # same every time for this symbol
end

# Types of variables in Ruby
# Local variable
_localname = 'san'

# Instance variable
@instancename = 'kavi'

# Global variable
$globalname = 'kats'

# Constant
CONSTANTNAME = 'kats'

puts _localname
puts @instancename
puts $globalname
puts CONSTANTNAME

# String interpolation
puts "Hello #{_localname}"   # works only with double quotes

# Class variable behavior
# Class variables are shared across all instances
class Cafe
  @@count = 0   # class variable
  def initialize
    @@count += 1
  end
  def self.count
    @@count
  end
end

# Creating objects
Cafe.new
Cafe.new
puts Cafe.count   # => 2
