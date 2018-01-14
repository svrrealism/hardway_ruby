#Exercise 17: More Files, copy from one to another

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# #file handler which can be done on one line
# in_file = open(from_file)
# indata = in_file.read

#Answer to the above is yes:
indata = open(from_file).read

#Chars take up one byte so the length of the chars is the number of bytes
# puts "The input file is #{indata.length} bytes long"
#
#
# spaces = "\n"*5
# lines = "=="*10
#
# puts """
#
# So far, the classes that exist in this script are the following:
# #{lines}
# #{spaces}
#
# From File or ARGV[0]: #{from_file.class}
# To File or ARGV[1]: #{to_file.class}
# In Data: #{indata.class}
# open(from_file): #{open(from_file).class}
# open(from_file): #{open(from_file).object_id}
# open(from_file): #{open(from_file).close.class}
#
# #{spaces}
# #{lines}
# """
#
#
# #See if you can remove the parenthetics from to_file
# puts "Does the output file exist? #{File.exist?to_file}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets

#This line truncates whatever was specified in ARGV[0]
# out_file = open(to_file, 'w')
# out_file.write(indata)

#out_file.class is actually an integer
#Does this mean the file is still open in memory somewhere?
#Tried to figure out the same for the in_file.
out_file = open(to_file, 'w').write(indata)

puts "Alright, all done."

#close from the innermost file
# out_file.close
# in_file.close
