#Exercise 20: Functions and Files

input_file = ARGV.first

#this will print all of the contents of the file
#Do Note that this will bring the cursor all the way to the end of the file
#For which then you can use the rewind function.

def print_all(f)
  puts f.read,"\n"
end

#Rewinds the cursor from the results of the above
def rewind(f)
  f.seek(0)
end

#specify a param for a line and print that line to stdout
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"

end

#create a file handler for the supplied file on the CLI
current_file = open(input_file)

#Invoke all 3 of the functions:
puts "Let's print the whole file:\n"
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
rewind(current_file)

puts "Let's print three lines: "
current_line = 1

print_a_line(current_line, current_file)

current_line +=1
print_a_line(current_line, current_file)

current_line +=1
print_a_line(current_line, current_file)

#Moving the cursor around in the file and printing the line it's currently at
#cursor location - end of the line that the cursor is on
current_file.seek(0)
puts current_file.seek(20)

puts current_file.readline
#testing out what File.gets.chomp does
#It prints out a line per invocation
puts "=="*20
puts current_file.gets.chomp
puts current_file.gets.chomp
puts current_file.gets.chomp
