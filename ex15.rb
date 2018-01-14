#Exercise 15: Reading Files

#set a var for the supplied value on the CLI
filename = ARGV.first
#set a var as a file handler
txt = open(filename)
#Output the filename supplied
puts "Here's your file at #{filename}:"
#call the read method on the file handler and dump to stdout
print txt.read
txt.close
#print a string, calling user to action
print "Type the filename again: "
#set var for getting supplied user input
file_again = $stdin.gets.chomp
#create another var for file handler
txt_again = open(file_again)
#dump contents to stdout invoking the read method on the file handler
print txt_again.read
txt_again.close
