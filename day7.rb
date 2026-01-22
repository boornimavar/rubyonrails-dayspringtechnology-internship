
# inheritance
# write a class and a parent-child relationship

class Animal
  def speak
    "hello"
  end
end

class Dog < Animal
  def speak
    "woof"
  end

  def say
    puts "The dog says: #{speak}"
  end
end

dog = Dog.new
dog.say
puts Dog.ancestors


# method lookup path
=begin
Dog
Animal
Object
Kernel
BasicObject
=end


# respond_to? method
puts dog.respond_to?(:upcase)


# do super keyword
class Cat < Animal
  def speak
    super + ", meow"
  end
end

cat = Cat.new
puts cat.speak


# create a parent class and child class,
# initialize variables in parent and access using super

class Parent
  def initialize(name, age, gmail)
    @name = name
    @age = age
    @gmail = gmail
  end

  def greet
    "Hello #{@name}, you are #{@age} years old"
  end
end

class Child < Parent
  def initialize(name, age, gmail)
    super(name, age, gmail)
  end
end

child = Child.new("Alice", 10, "alice@gmail.com")
puts child.greet


# write parent and child class
# do addition in parent and multiplication in child

class ParentCalc
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    @num1 + @num2
  end
end

class ChildCalc < ParentCalc
  def initialize(num1, num2)
    super(num1, num2)
  end

  def multiply
    @num1 * @num2
  end
end

calc = ChildCalc.new(5, 10)
puts "Addition: #{calc.add}"
puts "Multiplication: #{calc.multiply}"


# create a class and pass values dynamically to method
# try int+int, string+string, int+string

class Calculator
  def add(val1, val2)
    puts val1 + val2
  end
end

obj = Calculator.new
obj.add(5, 10)
obj.add("Hey, ", "there!!")
obj.add(5, " apples")





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
