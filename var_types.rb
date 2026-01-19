$global_var = "I am global"

class Example
  CONSTANT_VAR = "I am constant"

  @@class_var = "I am class variable"
  @class_instance_var = "I am class instance variable"

  def initialize
    @instance_var = "I am instance variable"
  end

  def show_local
    local_var = "I am local variable"
    local_var
  end

  def show_instance
    @instance_var
  end

  def self.show_class_var
    @@class_var
  end

  def self.show_class_instance_var
    @class_instance_var
  end

  def show_global
    $global_var
  end

  def show_constant
    CONSTANT_VAR
  end
end
