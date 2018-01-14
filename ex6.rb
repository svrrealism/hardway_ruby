#assign var for how many types of people
types_of_people = 10

#string for the body of a bad, overused joke
x = "There are #{types_of_people} types of people."
#set a string for a part of the punchline
binary = "binary"
#set a string for don't so you don't have to escape the apostrophe
do_not = "don't"
#assign an interpolated string to y var
y = "Those who know #{binary} and those who #{do_not}."

#output the first part of the bad joke
puts x
#output accomodating punchline
puts y

#Write the above as if spoken
puts "I said: #{x}."
#Tell the punchline as if spoken
puts "I also said: '#{y}'."

#set hilarious to false
hilarious = false
#set the joke to an interpolated string
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
#output the joke evaluation
puts joke_evaluation

#Output the west side of a string
w = "This is the left side of..."
#Output the east side of a string
e = "a string with a right side."

#output the strings concatenated together.
puts w+e
