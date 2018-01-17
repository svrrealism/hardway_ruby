#Exercise 33: While Loops

# i = 0
# numbers = []
#
# while i < 6
#   puts "At the top i is #{i}"
#   numbers.push(i)
#
#   i += 1
#   puts "Numbers now: ", numbers
#   puts "At the bottom is is #{i}"
# end
#
# puts "The numbers: "
#
# #remember you can write this two other ways
#
# numbers.each { |num| puts num }
# numbers.each do |number| puts number end


def while_func(num, inc)
  i = 0
  numbers = []
  while i <= num
    puts "Number at the top: #{i}"
    numbers.push(i)

    i += inc

    puts "Numbers so far: ", numbers
    puts "Number at the bottom: #{i}"
  end
end

while_func(800, 20)


#====For Loop Version====#

def for_func(num)
  numbers = []
  (0..num).each do |i|
    puts "Numbers are currently at: ", numbers
    numbers.push(i)
  end
end

for_func(10)
