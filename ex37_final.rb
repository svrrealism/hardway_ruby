divider = "=="*20

puts """
#{divider}
Keywords
#{divider}

BEGIN - run this block when the script starts
  ex. BEGIN { puts 'hi' }

END - run this when the script is done
  ex. END { puts 'hi' }

alias - create another name or a function
  ex. alias X Y

and - logical and, but lower priority than &&
  ex. puts 'Hello' and 'Goodbye'

begin - start a block, usually for exceptions
  ex. begin end

break - break out of a loop right now
  ex. while true; break; end

case - case style conditional, like an if
  ex. case x; when Y; else; end

class - define a new class.
  ex. class X; end

def - define a new method or function
  ex. def x(); end

defined? - is this class/function/etc. defined already?
  ex. defined? Class == 'constant'

do - create a block that maybe takes a parameter
  ex. (0..5).each do |x| puts x end

else - else conditional
  ex. if X; else; end

elsif - elsif conditional
  ex. if X; elsif Y; else; end

end - ends blocks, methods, classes, everything
  ex. begin end

ensure - run this code whether an exception happens or not.
  ex. begin ensure end

for - for loop syntax but the .each method is preferred.
  ex. for X in Y; end

if - if conditional
  ex. if X; end

in - in part of for loops
  ex. for X in Y; end

module - define a new module
  ex. module X; end

next - skip to the next element of a .each iterator
  ex. (0..5).each {|y| next}
  ex. (0..5).each {|x| puts x.next }

not - logical not, but use ! instead
  ex. not true == false

or - logical or
  ex. puts 'Hello' or 'Goodbye'

redo - rerun a code block exactly the same
  ex. (0..5).each {|i| redo if i > 2}

rescue - run this code if an exception happens
  ex. begin rescue X; end

retry - in a rescue clause, says to retry the block again
  ex. (0..5).each {|i| retry if i > 2 }

return - returns a value from a function. Mostly optional.
  ex. return X

self - the current object, class, or module
  ex. defined? self == 'self'

super - the parent class of this class
  ex. super

then - can be used with if, optionally
  ex. if arr.length > 0 then puts var[0] end
  ex. if true then puts 'hi' end

undef - remove a function definition from a class
  ex. undef X

unless - inverse of if
  ex. unless var == false then puts 'not' end

until - inverse of while, execute block as long as false
  ex. until false; end

when - part of case conditionals
  ex. case X; when Y; else; end

while - while loop
  ex. while true; end

yield - pause and tranfer control to the code block
  ex. yield

#{divider}
Data Types
#{divider}

true - true or false == true
false - false or false == false
nil - false
  ex. x = nil
strings - x = 'some string'
numbers - i = 100
floats - i = 100.0
arrays - ['something', 'really', 'awesome', 'is', ruby]
  ex. Can also be written as:
    %w(Something really awesome is ruby)
hashes - h = {'x' => 1, 'y' => 2}


#{divider}
String Escape Characters
#{divider}
\\ - backslash
\' - single quote
\" - double quote
\\a - bell character
\\b - backspace
\\f - form feed
\\n - newline
\\r - return (carriage return)
\\t - tab
\\v - vertical tab

These can be stripped using the strip function.

#{divider}
Operators
#{divider}

+ : add
- : subtract
* : multiply
** : exponent
/ : divide
% : modulo
. : dot access
:: : scope operator to access a class or methods or attributes of a class
[] : list brackets
! : not
< : less than
> : greater than
>= : greater than or equal to
<= : less than or equal to
<=> : comparison
  ex. 3<=>3
      #=> 0
== : is equal to
=== : is the subsumption (inclusion) operator; a === b; if a is a set, would it make sense for b to be included in that set?
!= : not equal
&& : logical And
|| : logical Or
.. : inclusive range (up to and including)
... : exclusive range (up to and excluding)
@ : instance variable of a method
@@ : class attribute, localizes var to the class or method
$ : global var



"""
