#Exercise 38: Doing Things to Arrays

#Note: Arrays are in order


ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]
some_array = Array.new

#using math to make sure there's ten items

while stuff.length != 10
  next_item = more_stuff.pop
  puts "Now adding: #{next_item}"
  stuff.push(next_item)
  puts "There are #{stuff.length} items currently."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")

#access something from an array randomly
puts stuff.sample

#get the last element of an array
puts stuff.last

#get the first element of an array
puts stuff.first

#sort the array
puts stuff.sort

#get unique results from an array
puts stuff.uniq

#combine two different arrays together
combined_array = stuff + more_stuff
puts combined_array

#combine arrays another way
combined_array2 = stuff.concat(more_stuff)
puts combined_array2

# return a subset of an array based on a range
# the below will print out an array containing items from the
# stuff array starting at the 3rd element and including the 5th element
puts stuff[3..5]

#transfer array contents to an empty sorted array
stuff.sort.each { |i| some_array.push(i); puts some_array }

#combine 2 arrays together:
#use .concat()
arr1 = %w(There is some strange data in here)
arr2 = %w(There is basic data in here)

def combine_array_data(a,b)
  return a.concat(b)
end
puts "=="*20
arr3 = arr1
arr4 = arr2

puts combine_array_data(arr3, arr4).sort.uniq
