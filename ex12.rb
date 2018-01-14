print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."


print "I can calculate 10% of any number for you. Try me and enter a number: "
user_number = gets.chomp.to_f

ten_percent = user_number * 0.10

puts "Ten percent of #{user_number.to_i} is #{ten_percent}."
