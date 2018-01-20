#Exercise 43: Basic Object-Oriented Analysis and Design
=begin
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
=end

class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    #be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene

  @@quips = [
    "You died. You kinda suck at this.",
    "Tresh.",
    "Such a luser.",
    "Just stop. Go become a florist or something."
  ]

  def enter()
    #since the array has 4 positions, get a random # between 0 and 3 inclusive.
    puts @@quips[rand(0..(@@quips.length - 1))]
  end

end

class CentralCorridor < Scene
  def enter()
  end
end

class LaserWeaponArmory < Scene

  def enter()
  end
end

class TheBridge < Scene

  def enter()
  end
end

class EscapePod < Scene

  def enter()
  end
end


class Map

  def initialize( start_scene)
  end

  def next_scene( scene_name)
  end

  def opening_scene()
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
