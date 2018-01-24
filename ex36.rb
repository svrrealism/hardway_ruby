#Exercise 36: Designing and Debugging

class User
  attr_accessor :name, :gender, :character_class

  def choice
    return $stdin.gets.chomp
  end

  def dead
    puts "Good job!"
  end

end

class Room
  attr_accessor :doors
end

class ParadiseRoom < Room
  attr_accessor :waterfall, :muffins
end

class EmptyRoom < Room
  attr_accessor :nothingness
end

def start
  puts "You are walking along a path and arrive at a building with 2 doors"
end

char_classes = %w(
  Time Mage
  Wizard
  Werewolf
  Elf
  Orc
  Knight
  Thief
  Ninja
  Healer
)

player1 = User.new
prompt = "> "

puts "What is your character's name?"
print prompt
player1.name = player1.choice
puts "\n"

puts "What is your character's gender?"
print prompt
player1.gender = player1.choice
puts "\n"


puts "What is your character's class?"
char_classes.each {|i| puts "#{char_classes.index(i)+1}).#{i}"}
print prompt
player1.character_class = player1.choice
puts "\n"

puts "Ok, #{player1.name}, you'll make an awesome #{player1.character_class}"
