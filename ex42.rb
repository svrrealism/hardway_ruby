#Exercise 42: Is-A, Has-A, Objects, and Classes

#Make an Animal that is-a class
class Animal
end

#Dog is-a Animal
class Dog < Animal

  def initialize(name)
    #Dog is-a Animal that has-a name attribute
    @name = name
  end
end

#Cat is-a Animal
class Cat < Animal
  def initialize(name)
    #Cat is-a Animal that has-a name attribute
    @name = name
  end
end

#Person is-a class
class Person
  def initialize(name)
    #Person is-a class that has-a name attribute
    @name = name

    #Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end


#An Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    #An Employee uses the parent name attribute found in Person
    super(name)
    #An Employee is-a Person containing a salary attribute
    @salary = salary
  end
end

#A Fish is-a class
class Fish
end

#A Salmon is-a Fish class
class Salmon < Fish
end

#A Halibut is-a Fish class
class Halibut < Fish
end

##rover is-a Dog object
rover = Dog.new("Rover")

##mae is-a Cat object
mae = Cat.new("Mae")

##gregg is-a Person object, ok?
gregg = Person.new("Gregg Rulez ok?")

#Angus is-a Employee object
angus = Employee.new("Angus", 120000)

#angus is-a object that has-a attribute of pet set to an object, rover
angus.pet = rover

#Flipper is-a Fish object initialized with a name
flipper = Fish.new("Flipper")

#crouse is-a Salmon object
crouse = Salmon.new()

#harry is-a Halibut object
harry = Halibut.new()
