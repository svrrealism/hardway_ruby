#Exercise 18: Names, Variables, Code, Functions

def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
  puts "arg1: #{arg1}"
end

def print_none()
  puts "I got nada."
end

print_two("Hello", "World")
print_two_again("Hello", "World")
print_one("First!")
print_none()
