#Exercise 19: Functions and Variables

#function that prints supplied parameter outputs
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers."
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

#case of supplied integers
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

#create variables to supply to function
puts "OR, we can just use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 55

#call function with created variables
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#perform math within the calling of the function as parameters
puts "We can even do math inside too:"
cheese_and_crackers(10+20, 5+6)

#use both variables and numbers during the called function as parameters
puts "And we can combine the two, variables and math"
cheese_and_crackers(amount_of_cheese+20+33, amount_of_crackers+100)

#definition of another function and calling it 10 different ways below.
def another_function(stuff, other_stuff)
  puts "\nYour total products owned are: #{stuff + other_stuff}.\n\n"
end

amount_stuff = 1123
amount_other_stuff = 232

puts "Run1:"
  another_function(20,200)
puts "Run2:"
  another_function(amount_stuff%3, amount_other_stuff)
puts "Run3:"
  another_function(amount_stuff*3, amount_other_stuff/9)
puts "Run4:"
  another_function(amount_stuff/5, amount_stuff.to_f)
puts "Run5:"
  another_function(amount_stuff.to_f, amount_other_stuff.to_f)
puts "Run6:"
  another_function(amount_stuff*amount_stuff, amount_other_stuff*amount_other_stuff)
puts "Run7:"
  another_function(amount_stuff*amount_other_stuff, amount_other_stuff)
puts "Run8:"
  another_function(amount_stuff*amount_other_stuff, amount_other_stuff*amount_other_stuff)
puts "Run9:"
  another_function(amount_other_stuff*amount_other_stuff, amount_other_stuff/amount_other_stuff)
puts "Run10:"
  another_function(amount_stuff/amount_stuff*0, amount_stuff/amount_stuff*0)
