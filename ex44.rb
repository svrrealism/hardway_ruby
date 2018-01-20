#Exercise 44: Inheritance Versus Composition

# class Parent
#   def implicit
#     puts "PARENT implicit()"
#   end
# end
#
# class Child < Parent
# end
#
# dad = Parent.new
# son = Child.new
#
# dad.implicit
# son.implicit

# class Parent
#   def override()
#     puts "PARENT override()"
#   end
#
# end
#
# class Child
#   def override()
#     puts "CHILD override()"
#   end
# end
#
# dad = Parent.new
# son = Child.new
#
# puts dad.override()
# puts son.override()

# class Parent
#   def altered()
#     puts "PARENT altered()"
#   end
# end
#
# class Child < Parent
#   def altered()
#     puts "CHILD, BEFORE PARENT altered()"
#     super()
#     puts "CHILD, AFTER PARENT altered()"
#   end
# end
#
# dad = Parent.new
# son = Child.new
#
# dad.altered
# puts '-' * 10
# son.altered

#All 3 combined

# class Parent
#   def implicit
#     puts "Parent implicit"
#   end
#
#   def altered
#     puts "Parent altered"
#   end
#
#   def override
#     puts "Parent override"
#   end
# end
#
# class Child < Parent
#   def altered
#     puts "Child altered"
#     super
#     puts "Child altered"
#   end
#
#   def override
#     puts "This is child override"
#   end
# end
#
# dad = Parent.new
# son = Child.new
#
# dad.implicit
# dad.altered
# dad.override
#
# son.implicit
# son.altered
# puts '-'*10
# son.override
#
# #Super is most commonly found in the initialization function in the Child
# #When you call super, the initialize function then takes place in the parent
#
# class Parent2
#   def initialize(var, var2)
#     @var = var
#     @var2 = var2
#   end
# end
#
# class Child2 < Parent2
#   def initialize(var, var2)
#     @var = var
#     super()
#   end
# end

#Notice how in all of the above there is a lot of rewriting functions to do an override
#Why not just replicate those functions by creating another class or module?

#Also made the following code into a module to complete this composition example another way.
# => other.rb

class Other
    def override()
      puts "OTHER override"
    end

    def implicit()
      puts "OTHER implicit"
    end

    def altered()
      puts "OTHER altered"
    end
end

class Child3
  def initialize()
    @other = Other.new
  end
  def implicit()
    @other.implicit()
  end
  def override()
    @other.override()
  end
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end


son = Child3.new

son.implicit
son.altered
son.override
