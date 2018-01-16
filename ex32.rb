require 'json'
#Exercise 32: Loops and Arrays

the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for loop goes through a list
#in a more traditional style found in other languages
#although you can do this, it's frowned upon
# for number in the_count
#   puts "The count is #{number}"
# end

the_count.each {|i| puts "The count is #{i}"}


#Same as the above, but in a more Ruby style
#this and the next are the preferred
#way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed lists too
#note this is yet another style, exactly like above.
#but written with different syntax
change.each{|i| puts "I got #{i}"}

#we can also build lists, first start with an empty one.
elements = []

#then use the range operator to do 0 to 5 counts.
(0..5).each do |i|
  puts "adding #{i} to the list."
  elements.push(i)
end

#And now we can print them out too.
elements.each {|i| puts "Element was: #{i}"}


#alternative syntax
test_arr = []

(0..10).each do |x|
  test_arr << x
  puts "adding #{x}"
end

test_arr.each {|x| puts "From test_arr the next element is: #{x}" }


evens = []
odds = []
(0..10).each do |i|
  if i%2 == 0
    evens << i
  else
    odds.push(i)
  end
end

evens.each {|e| puts "All of the even numbers are: #{e}"}
odds.each {|o| puts "All of the odd numbers are: #{o}"}

#vowel less words, sometimes y
without_vowels_y = ["spy", "try", "sty", "pry", "gym", "shy", ]

#true vowel less words
without_vowels = ["cwm", "cwtch", "crwth"]

obscure_dictionary = {}

without_vowels_definitions = [
  "deep hollow within a mountain with steep edges, usually spelled combe; Western Cwm of Mount Everest",
  "Hiding place or a cubby hole.",
  "Welsh musical instrument similar to the violin"
]

#join all of the words together in a new var
#the elements from the first set of the array appear first in the new array
all_words = without_vowels.concat(without_vowels_y.flatten)

with_vowels = ["intrepid", "demiurge", "gainsay", without_vowels[0]]

with_vowels.each do |x|
  if x =~ /[a,e,i,o,u]/
    puts "Vowels exist in the word: #{x}"
  else
    puts "Vowels do not exist in the word: #{x}"
  end
end

nums_and_words = ["1", "2", "3", "abc", "cdef", "$"]

nums_and_words.each do |i|
  if /[a-zA-Z_]/ =~ i
    puts "This is a word."
  elsif /\d+/ =~ i
    puts "This is clearly a number."
  else
    puts "These are clearly something else."
  end
end
