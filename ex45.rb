#Exercise 45: You Make a Game
class Room
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end

  def dead(why)
    puts why, "Good job!"
    exit(0)
  end
end

class Engine
  def initialize(selected_room_obj)
    @selected_room_obj = selected_room_obj
  end

  def play()
    #returns instantiated room that was passed through
    #the code will return different objects from the Navigator hash over time.
    #The room's logic is what causes the 'cycling' through rooms as values are returned.
    current_room = @selected_room_obj.begin_room()
    #set a var to the finished room object to use in conditional
    last_room = @selected_room_obj.next_room('finished')

    while current_room != last_room
      next_room_name = current_room.enter()
      current_room = @selected_room_obj.next_room(next_room_name)
    end
    #Must kick off the process initially, by starting the room.
    #The 'real' play button.
    current_room.enter()
  end
end

class Dark < Room

  def enter()
    puts"""
      You are in a dark room.
      There is a door to your right and left.
      Which one do you take?
    """
    choice = $stdin.gets.chomp
    if choice == "left"
      return 'bear_room'
    elsif choice == "right"
      return 'cthulhu_room'
    else
      self.dead("You stumble around the room until you starve.")
    end
  end
end


class Bear < Room

  def enter()
    puts """
      There is a bear here.
      The bear has a bunch of honey.
      The fat bear is in front of another door.
      How are you going to move the bear?
    """
    bear_moved = false

    while true
      print "> "
      choice = $stdin.gets.chomp

      if choice == "take honey"
        self.dead("The bear looks at you then slaps your face off.")
      elsif choice == "taunt bear" && !bear_moved
        puts "The bear has moved from the door. You can go through it now."
        bear_moved = true
      elsif choice == "taunt bear" && bear_moved
        self.dead("The bear gets pissed off and chews your leg off.")
      elsif choice == "open door" && bear_moved
        return 'gold_room'
      else
        puts "I got no idea what that means"
      end
    end
  end
end

class Cthulhu < Room

  def enter()
    puts """
      Here you see the great evil Cthulhu.
      He, it, whatever stares at you and you go insane.
      Do you flee for you life or eat your head?
    """
    print "> "
    choice = $stdin.gets.chomp

    if choice.include? "flee"
      return 'dark_room'
    elsif choice.include? "head"
      self.dead("Well that was tasty!")
    else
      return 'cthulhu_room'
    end
  end
end

class Gold < Room

  def enter()
    puts "This room is full of gold. How much do you take?"
    print "> "
    choice = $stdin.gets.chomp

    if /\d+/ =~ choice
      how_much = choice.to_i
    else
      self.dead("Man, learn how to type a number.")
    end

    if how_much < 50
      return 'finished'
    else
      self.dead("You greedy bastard!")
    end
  end
end

class Finished < Room
  def enter()
    puts "Nice, you're not greedy, you win."
    exit(0)
  end
end

class Navigator
  @@rooms = {
      'dark_room' => Dark.new(),
      'bear_room' => Bear.new(),
      'cthulhu_room' => Cthulhu.new(),
      'gold_room' => Gold.new(),
      'finished' => Finished.new()
  }

  def initialize(start_room)
    @start_room = start_room
  end

  def next_room(room_name)
    loaded_room = @@rooms[room_name]
    return loaded_room
  end

  def begin_room()
    return next_room(@start_room)
  end
end



a_map = Navigator.new('dark_room')
a_game = Engine.new(a_map)
a_game.play()
