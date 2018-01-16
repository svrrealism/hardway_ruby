#Exercise 31: Making Decisions

puts "You enter a dark room with 3 doors. Do you go through door #1, door #2...or door #3."

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "The is a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bears eats your legs off. Good job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into an endless abyss at Cthulu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello."
  else
    puts "The insanity rots your eyes into a pool of muck."
  end
elsif door == "3"
  puts "You see a quantum computer."
  puts "1. Use quantum algorithm to model reality."
  puts "2. Use quantum encryption to safegaurd svrrealist data."
  puts "3. Observe in wonder."

  print "> "
  quantum = $stdin.gets.chomp

  if quantum == "1"
    puts "You discover a truth so advanced that people would never believe you. You walk off remembering what you've seen."
  elsif quantum == "2"
    puts "You encrypt svrrealist data to eventually reupload to a collective quantum consciousness in the distant future."
  elsif quantum == "3"
    puts "Well...this is interesting."
  else
    puts "In the back of your mind you wonder who could be capable of building such an otherworldy device."
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
