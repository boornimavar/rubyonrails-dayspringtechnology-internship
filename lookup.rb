
class First
  def greet
    "hello from first class"
  end
end

class Second < First
  def greet
    super + " and hello from second class"
  end

  def m1
    p "method m1 from second class"
  end

  def puts
    print "The second class says: #{greet}"
  end
end

obj = Second.new
puts obj.puts


# We don’t need explicit inheritance only when the method already exists in the lookup chain (Object / Kernel), 
# but for class-specific methods like String #upcase, we must inherit from that class.

class NewString
  def upcase
    super
    "overridden"
  end
end
puts NewString.ancestors
puts str.respond_to?(:upcase)
=begin
NewString
Object
Kernel
BasicObject
=end

class MyString < String
  def upcase
    super
    "overridden"
  end
end
str = MyString.new('hello')
puts str.upcase
puts str.respond_to?(:upcase) #true

