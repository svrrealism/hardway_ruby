#Exercise 43: Basic Object-Oriented Analysis and Design

puts "Game or Read Theory (g/r)?"
print "> "
answer = $stdin.gets.chomp.downcase!

if answer == 'r'

  puts """
  When you want to build something in Ruby, specifically with OOP, you have:

  Top Down
  --------
  1. Write or Draw about the problem
  2. Extract key concepts from 1 and research them
  3. Create a class hierarchy and object map for the concepts
  4. Code the classes and a test to run them
  5. Repeat and refine

  Bottom Up
  ---------
  1. Take a small piece of the problem, hack on some code and get it to run barely.
  2. Refine the code to something more formal with classes and automated tests.
  3. Extract the key concepts you're using and try to find research for them.
  4. Write a description of what's really going on.
  5. Go back and refine the code, possibly thowing it out and starting over.
  6. Repeat, mvoing on to some other piece of the problem.

  """
else
  welcome = "Welcome to Gothons from Planet Percal #25"

  puts welcome
  puts `say -r 250 -v Bruce #{welcome}` if /darwin/ =~ `uname -a`.downcase
end
