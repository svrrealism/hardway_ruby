#Exercise 41: Learning to Speak Object-Oriented

divide = '-' * 10
puts """
#{divide}
Word Drills
#{divide}

class - Tell Ruby to make a new type of thing

object - two meanings: the most basic type of some thing, and any instance of some thing.

instance - what you get when you tell Ruby to make a class

def - define a method inside of a class

@ - inside the functions in a class, @ is a variable for the instance/object being accessed.

inheritance - the concept that once class can inherit traits from another class.

composition - the concept that a class can be composed of other classes as part, like cars have wheels.

attribute - a property that classes have which are from composition and are usually variables.

is-a - a phrase to say that something inherits from anothe, as in a 'salmon' is-a 'fish'

has-a - a phrase to say that something is composed of other things or has a trait, 'salmon' has-a 'mouth'

#{divide}
Phrase Drills
#{divide}

class X < y  'Make a class that is-a Y'

class X: def initialize(J) 'class X has-a initialize that takes a J parameter.'

class X: def M(J) 'class X has-a method M that takes a J parameter.'

foo = X.new() 'set foo to a new instance of class X'

foo.M(J) 'from foo get the method M and call it with parameter J'

foo.K = Q 'from foo get the K attribute and set it to Q'















"""
