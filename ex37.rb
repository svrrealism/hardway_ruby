#Exercise 37: Symbol Review

divider = "=="*20

puts """



Svrrealist Definitions from memory
#{divider}

Keywords

BEGIN -

END -

alias -

and - logical and represented as &&

begin - begin an try block (begin is the try in try/except blocks)

break - break out of a code block

case - context switching / version of a conditional code block

class - create a class that encapsulates methods and

def - define a function

defined? - if the function is defined.

do - start the code block of a loop

else - the last part of a conditional that runs if all everything above it is false

elseif - the next part of a conditional if the first or previous elseif statement evaluates to false

end - end of a code block

ensure - code that runs no matter what inside of a begin/rescue (try/except) block

for - syntax for the start of a for loop

if - syntax for the start of an if statement

in - operator for an iterable

module - code that can be required into another file to use code from

next -

not - logical not represented as !

or - logical or represented as ||

redo -

rescue - exception block where the error should be defined, default is StandardError

retry -

return - returns a value from the executed code in a function

self -

super -

then - used in one-liner if statements

undef -

unless - inverted 'if statement' that reads: UNLESS this conditional is true

until - similar to a while loop, but terminates only when a condition is reached.

when - this appears during a case statement

while - syntax for the beginning of a while loop

yield -


#{divider}
Data Types

true
false
nil
strings
numbers
floats
arrays
hashes


#{divider}
String Escape Sequences

'\\' - backslash
'\'' - single quote
'\"' - double quote
\\a - bell character
    for some reason when this is escaped, it gives:
    syntax error, unexpected $undefined, expecting end-of-input

'\\b' - backspace character
'\\f' - form feed
'\\n' - newline
'\\r' - carriage return
'\\t' - tab
'\\v' - vertical tab

#{divider}
Operators

+ : add
- : subtract
* : multiply
** : exponent
/ : divide
% : modulo
. :
:: : scope operator to access a class or methods or attributes of a class
[] : the regex grouper
! : logical not
< : less than
> : greater than
>= : greater than or equal to
<= : less than or equal to
<=> :
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
