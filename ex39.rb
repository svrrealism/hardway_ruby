# Exercise 39: Hashes, Oh Lovely Hashes

# create a mapping of state to abbreviation

states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

#Create a basic set of states and some cities in them.

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

#add some more cities
cities['NY'] = 'New York City'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY state has: #{cities['NY']}"
puts "OR state has: #{cities['OR']}"

#puts out some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

#puts every city in state
cities.each {|city, state| puts "#{state} has the city #{city}"}

#Now do both at the same time
puts '-' * 10

states.each do |state, abbrev|
  city = cities['abbrev']
  puts "#{state} is abbreviated #{abbrev} and has the city #{city}"
end

#Use values from states as input keys to cities
states.values.each {|i| puts cities[i]}

puts '-' * 10
#by default ruby says nil when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

#default values using ||= with nil result
city = cities['TX']
city ||= 'Does not Exist'
puts "The city for the state 'TX' is: #{city}"
