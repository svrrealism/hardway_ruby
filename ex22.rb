#Exercise 22: What Do You Know So Far?

puts """

What I Know
===========

puts - put string with a new line character

# {} - together this is used for string interpolation

formatter can be used like so:
      format_string_var = {%{somevar1} %{somevar2}}
      puts format_string_var % {somevar1: 25, somevar2: 30}

      puts format_string_var % {
        somevar1: 'some other string',
        somevar2: 'some other string2'
      }

      puts format_string_var % {
        somevar1: some_other_var,
        somevar2: some_other_var2
      }

puts %q {
  Some text
} - this prints / creates a quote block

view ex10 for the ascii table of things like:
  - \\n, \\t, \\v, \\u, etc....(newline, tab, vertical tab, 16-bit hex)

print - prints a string without the newline

gets.chomp - reads a string or file one line at a time, chomp gets rid of the newline char.

String.to_i - converts a number in the form of a string to an integer

String.to_f - converts a number in the form of a string to a floating point value.

Integer.to_s - converts an integer into a string.

$stdin.gets.chomp - reads the next line from the IO stream. (refer to ri IO#gets for more information.)
                    For example you may have two user prompts, let's say that they are set to $stdin.gets.chomp:
                    prompt1 = $stdin.gets.chomp
                    prompt2 = $stdin.gets.chomp
                    You want to ensure that the second var gets the absolute next line from the user.

ARGV.first - this is the first argument supplied to the ARGV array (for .first: any array), which is ARGV[0].

ARGV.last - this is the last argument supplied to the ARGV array (for .first: any array), which is ARGV[-1]

fd = open('file', '[rwaa+rb]') - open is a function to open a file or create it if it does not exist, and there are supplied parameters.

fd - you'll commonly see this in examples as a variable standing for file descriptor. It acts as a file handler above.

fd.read() - reads the contents of the open file, if open and has permissions set to do so.

fd.write() - specify what string or value to write to the target file

fd.seek() - allows you to specify by parameter, where the cursor should be in an open file object.
            Specify 0 to begin at the beginning of a file.

fd.close() - close the file object

File.new('somefile') - invoking the file creation method on the base class of file to create a new file

Dir.pwd - directory class, but here, invoking the system's pwd function to get the present working directory.

def - how to define a funtion or method

*args - as in the context of def some_method(*args): it is an empty array that allows for the function or method to take multiple parameters
        You can tokenize this array (as with any array) with variable assignment, like so: arg1, arg1 = args

..  - inclusive(closer together)
... - exclusive(further apart)

=================================

Addition Notes and Observations:

'SomeString'[0..-1] - this reads, return the elements from SomeString starting from the first position up
                      until AND including the last position (whole string, ultimate position)

'SomeString2'[0..-2] - return elements from the first position up until AND including the penultimate
                       position (second to last position)

'SomeString3'[0..-3] - return elements from the first position up to AND including the antepenultimate
                       position (third last)

'SomeString4'[0..-4] - Return elements from the first position up to AND including the Preantepenultimate
                       position (fourth last)

'SomeString5'[0..-5] - Return elements from the first position up to AND including the Propreantepenultimate
                       position (fifth last)

"""
