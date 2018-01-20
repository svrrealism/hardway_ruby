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
    exit(1)
  end

end

class CentralCorridor < Scene
  def enter()
    puts """
      The Gothons of Planet Percal #25 have invaded your ship and destroyed your
      entire crew. You are the last surviving member and your last mission is to
      get the neutron destruct device from Weapons Armory, put it in the bridge,
      and decimate the ship after getting into an escape pod.

      You're running down the Central Corridor and to the Weapons Armory when a
      Gothon jumps out, red scaly skin, dark grimey teeth, and evil clown costume
      flowing around his hate filled body. He's blocking the door to the Armory
      and about to pull a laser projector to destroy you too.
    """
    puts "> "
    action = $stdin.gets.chomp

    if action == "shoot!"
      puts """
        Quick on the draw you yank out your spartaneous laser projector and fire
        it at the Gothon. His clown costume is flowing and moving around his body,
        which throws you off aim. Your laser hits his costume but misses him
        entirely. This completely ruins his brand new costume, which makes him fly
        into an insane rage and blast you repeatedly in the face until you are dead.
        Then he eats you.
      """
      return 'death'

    elsif action == "dodge!"
      puts """
        Like a world class boxer you dodge, weave, slip and slide right as the
        Gothon's blaster cranks a laser past your head. In the middle of your
        artful dodge your foot slips and you bang your head on the metal wall and
        pass out. You wake up shortly after only to die as the Gothon stomps on your
        head and eats you.
      """
      return 'death'

    elsif action == "tell a joke"
      puts """
        Lucky for you they made you learn Gothon insults in the academy.
        You tell the one Gothon joke you know:
        Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr.
        The Gothon stops, tries not to laugh, then bursts ot laughing and can't move.
        While he's laughing you run up and shoot him square in the head putting him
        down, then jump through the Weapon Armory door.
      """
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end

class LaserWeaponArmory < Scene

  def enter()
    puts """
      You do a dive roll into the Weapon Armory, crouch and scan the room for more
      Gothons that might be hiding. It's dead quiet, too quiet. You stand up and
      run to the far side of the room and find the neutron destruct device in its
      container. There's a keypad lock on the box and you need the code to get the
      bomb out. If you get the code wrong 10 times then the lock closes forever and
      you can't get the device. The code is 3-digits.
    """
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    puts code
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses < 9
      puts "BZZZZZEDDD!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts """
        The container clicks open and the seal breaks, letting gas out. You grab
        the neutron destruct device and run as fast as you can to the bridge where
        you must place it in the right spot.
      """
      return 'the_bridge'

    else
      puts """
        The lock buzzes one last time and then you hear a sickening melting sound
        as the mechanism is fused together. You decide to sit there, and finally
        the Gothons decimate the ship from their ship and you die.
      """
      return 'death'
    end
  end
end

class TheBridge < Scene

  def enter()
    puts """
      You burst onto the Bridge with the neutron destruct bomb under your arm and
      surprise 5 Gothons who are trying to take control of the ship. Each of them
      has an even uglier clown costume than the last. They haven't pulled their
      weapons out yet, as they see the active bomb under your arm and don't want
      to set it off.
    """
    print "> "

    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts """
        In a panic you throw the bomb at the group of Gothons and make a leap
        for the door. Right as you drop it a Gothon shoots you right in the back,
        killing you. As you die you see another Gothon frantically try to disarm
        the device. You die knowing they will probably blow up when it goes off.
      """
      return 'death'

    elsif action == "slowly place the bomb"
      puts """
        You point your blaster at the bomb under your arm and the Gothons put their
        hands up and start to sweat. You inch backward to the door, open it, and then
        carefully place the device on the floor, pointing your blaster at it. You then
        jump back through the door, pressing the close button and blast the lock so the
        Gothons can't get out. Now that the bomb is placed you run to the escape pod to
        get off of this tin can.
      """
      return 'escape_pod'
    else
      puts "DOES NOT COMPUTE!"
      return 'the_bridge'
    end
  end
end

class EscapePod < Scene
  def enter()
    puts """
      You rush through the ship desperately trying to make it to the escape pod
      before the whole ship explodes. It seems like hardly any Gothons are on the
      ship, so your run is clear of interference. You get to the chamber with the
      escape pods, and now need to pick one to take. Some of them could be damaged
      but you don't have time to take a look. There's 5 pods, which one do you take?
    """

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts """
        You jump into pod #{guess} and hit the eject button.
        The pod escapes out into the void of space, then implodes
        as the hull ruptures, crushing your body into jam jelly.
      """
      return 'death'
    else
      puts """
        You jump into pod #{guess} and hit the eject button.
        The pod easily slides out into space heading to the planet below. As it
        flies to the planet, you look back and see your ship implode then explode
        like a bright star, taking out the Gothon ship at the same time.

        You won!
      """
      return 'finished'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
