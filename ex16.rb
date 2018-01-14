#Exercise 16: Reading and Writing Files

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL+C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'a')


# puts "Truncating the file. GoodBye!"
# Though this is superfluous because opening a file for writing will open
# a new file or truncate the file to 0 bytes
# target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

all_lines = "#{line1}\n#{line2}\n#{line3}\n\n"
puts "I'm going to write these lines to the file."
target.write(all_lines)
# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

puts "I'm also going to copy from the second file."
second_file = ARGV[1]
f = open(second_file, 'r')
target.write(f.read)

puts "And finally we close it."
target.close

puts "Then we close the second file."
f.close
