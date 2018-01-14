tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

hex = 0x0905
hex_val = hex.chr('UTF-8')

puts hex_val
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

ascii_table = """
- \\\\ - this is simply a backslash, but here in the code, it's two escaped backslashes.\n
- You can escape apostrophic wraths by escaping them: \', no error either way.\n
- Do the same as above for when you want to add finger quotes in the sentence: \" like so (error without escaping). \n
- Just determining what this \\a does a\and....bell character seems to do nothing.\n
- The backspace character \\b is obvious\b...or is it? Yep!\n
- The formfeed character is \\f and what it does will be \f demystified...\n
- And our typical friend the newline character or \"formfeed\": \\n like so.\n
- Let's see what carriage return: \\r does? It does something like...\r this...(funky)\n
- And our good ol friend the horizontal tab: \\t will basically do this -> \t for us.\n
- Character with 16 bit hex values? -> \\uxxxx...and in action, like \u0905 this.\n
- This is the vertical tab \\v in\vaction.\n
- Characters with octal values look like \\ooo so basically -> \o5 ...not sure...0 thru 7 is octal\n
- And lastly hex chars...\\xhh like so -> \x5A.   <- hehe it worked...\"Z\"\n

And that does it for the basic Ruby Escape Sequences!
"""

puts ascii_table
