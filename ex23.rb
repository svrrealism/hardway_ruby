# Exercise 23: Read Some Code

puts """

1. Go to github.com
2. Search for Ruby in the search bar
3. Click on a random project
4. Click source tab, browse through the list of files until an .rb file is found.
5. Write down anything that looks interesting or confusing.

"""

line_break = "=="*25
puts """

Here are some of the things that I've found:
#{line_break}

Required libraries found in either gems (which if found, these gems are added to the ruby loadp) or the ruby loadpath

To check the loadpath in irb:
puts $LOAD_PATH (this is an array.)

To check the default load path of the ruby installation on CLI, run:

    ruby -e 'puts $LOAD_PATH' <- MAKE SURE THIS IS SINGLE QUOTES OR IT WON'T WORK...
      The -e flag allows you to run some ruby code without having to store it in a file

#{line_break}

To check if I have the below, I can run:
  $ gem list <file_required_in_script>

List all gems:
  $ gem list

To update gems:
  gem update <library_name>, i.e. gem update json

require 'yaml'
require 'net/https'
require 'socket'
require 'json'

I used the ruby gem json to parse json content and output it, like so:

data = %({
  'email': [
    {
      'Subject': 'Wonderland',
      'date': #{Time.now.to_s},
      'from': 'Alice'
    }
  ],

  'products': [
    {
      'cat_food': '3.00',
      'water': '1.99',
      'bowl': '17.00'
    }
  ]
})

data = JSON.parse(data)

#output all of the first level vars like email and products, into an array.
p data.keys

#print out individual things like price of cat food:

p data['products'][0]['cat_food'].to_i

#get working directory
Dir.getwd

$stderr.puts 'Some message that gets to put into stderr'

private - sets subsequently defined methods or symbols to private, can take a parameter, return value => self.

.to_json - convert a hash to json...SUPER USEFUL!!!

require 'uri'

uri = URI.parse('http://google.com')
=> #<URI::HTTP http://google.com>

site = uri.to_s
=> http://google.com

site.include?('google')
=> true

Check the bytesize of something with:

'somestring'.bytesize

.any? - passes a collection like an array into a block to iterate over, determining if there
        is a true value (not false or not nil). If there is, method returns true.


If you are doing exception handling, you can output an error like so:

begin
  #execute some code
rescue StandardError => err
  $stderr.puts 'Somethin went wrong with the code.'
  $stderr.puts 'Please try again'
  $stderr.puts 'Your error was: ', err
end


"""
