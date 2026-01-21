#conditionals
#if 
#elesif
#unless

stock = 0
if stock > 5
    puts stock
    # break
else
    stock += 1
    puts stock
end


#price and discount
price = 500
discount = 0
if price >= 500
  discount = 50
elsif price < 500 && price >= 400
  discount = 40
elsif price < 400 && price >= 300
  discount = 30
else
  discount = 20
end
puts discount

#swich case -> logical evaluation in when cases wont work here, range works.
case price
when 500..Float::INFINITY
  discount = 50
when 400..499
  discount = 40
when 300..399
  discount = 30
else
  discount = 20
end
puts discount

#unless
num = 4
unless num.odd?
    puts "its odd"    
else 
    puts "it is even"
end

email = "boo"
unless email
    puts "unavialble"
else
    puts "available"
end

#access specifiers
#private, public and protected
#private is accessable outside of the scope or class in ruby.
class User
  def initialize(name, age)
    @name = name
    @age  = age
  end

  # public method
  def show_profile
    basic_info
  end

  protected
  # protected method , usable inside class + subclasses
  def basic_info
    puts "Name: #{@name}"
    puts "Age: #{@age}"
  end
end


class Admin < User
  def initialize(name, age, role, access_level)
    super(name, age)
    @role = role
    @access_level = access_level
  end

  # public method
  def show_admin_profile
    full_info
  end

  private
  # private method, only callable inside class
  def full_info
    basic_info          # protected method from parent
    puts "Role: #{@role}"
    puts "Access Level: #{@access_level}"
  end
end


admin = Admin.new("Sudha", 24, "Manager", "High")

admin.show_admin_profile     # works
admin.show_profile           # works (public method)

# admin.basic_info           # protected (not callable outside)
# admin.full_info            # private (not callable outside)
