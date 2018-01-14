#amount of cars
cars = 100
#space in car as floating point
space_in_car = 4.0
#amount of drivers
drivers = 30
#amount of passengers
passengers = 90
#Difference between cars not driven and drivers(cars driven as defined later on)
cars_not_driven = cars - drivers
#cars driven determined by available drivers
cars_driven = drivers
#total carpool capacity
carpool_capacity = cars_driven * space_in_car
#calculate average
average_passengers_per_car = passengers/cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
