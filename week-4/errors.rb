# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#       The error occurs in errors.rb.
# 2. What is the line number where the error occurs?
#       The error occurs on line 170.
# 3. What is the type of error message?
#       This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#       The interpreter says it was not expecting an end_of_input, rather, it
#       was looking for the keyword_end.
# 5. Where is the error in the code?
#       There should be another keyword_end after line 15. The method body doesn't
#       get closed off.
# 6. Why did the interpreter give you this error?
#       I got this error because the while loop on line 14 doesn't get closed
#       off. Instead, it is ended by the keyword_end intended to close off the
#       method body, which leaves the interpreter thinking the rest of the
#       program is part of the cartman_hates method.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#       The error occurs in line 40.
# 2. What is the type of error message?
#       This is an Object (NameError).
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says `south_park' is an undefined local variable or
#       method for main.
# 4. Where is the error in the code?
#       The error is in line 40, where the variable `south_park' is not defined.
# 5. Why did the interpreter give you this error?
#       There should be an `=` and an object to which the variable can point.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#       The error occurs on line 56.
# 2. What is the type of error message?
#       This is an Object (NoMethodError).
# 3. What additional information does the interpreter provide about this type of error?
#       The method `cartman()` is undefined for main.
# 4. Where is the error in the code?
#       The method `cartman()` doesn't exist.  The error is everywhere, as the
#       method could be defined anywhere.
# 5. Why did the interpreter give you this error?
#       The interpreter can't do anything with an undefined method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#       The error occurs on line 72 or 76, depending on your perspective.
# 2. What is the type of error message?
#       This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says the method call on line 76 has the wrong number of
#       arguments (1 for 0).
# 4. Where is the error in the code?
#       The error is on line 76, where we try to pass a String argument to
#       `cartmans_phrase`.
# 5. Why did the interpreter give you this error?
#       This method doesn't take any arguments, but we try to give it one.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#       The error occurs on line 93 or 97, depending on your perspective.
# 2. What is the type of error message?
#       This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says we gave it the wrong number of arguments (0 for 1).
# 4. Where is the error in the code?
#       The error is in line 97, where `cartman_says` doesn't take an argument.
# 5. Why did the interpreter give you this error?
#       The method needs an argument to function. Must have argument.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#       The error occurs on line 118 (It fails to satisfy line 114).
# 2. What is the type of error message?
#       This is an ArgumentError message.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says `cartmans_lie` is taking the wrong number of
#       arguments (1 for 2).
# 4. Where is the error in the code?
#       The error is in line 118 where there is only one argument passed to the method.
# 5. Why did the interpreter give you this error?
#       There should be a name after the lie, such as Stan or Kyle.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#       The error occurs on line 134.
# 2. What is the type of error message?
#       This is an object TypeError.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says the "Respect my authoritay!" String can't be
#       coerced into a Fixnum.
# 4. Where is the error in the code?
#       On line 34, the `* 5` could go after the string.
# 5. Why did the interpreter give you this error?
#       The 5 and the string's positions are swapped.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0

# 1. What is the line number where the error occurs?
#       The error occurs on line 150.
# 2. What is the type of error message?
#       This is a ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says we tried to divide by zero with '/' haha.
# 4. Where is the error in the code?
#       There is no error. Infinite KFC is a desirable condition. Kidding. The
#       error is near the end of the line, where we try to divide by zero. Math
#       just doesn't work this way.
# 5. Why did the interpreter give you this error?
#       You can't divide by zero. That is nonsense. `20 / 1` would make more
#       sense, depending on how many chicken pieces are left in the bucket.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#       The error occurs on line 168.
# 2. What is the type of error message?
#       This is a LoadError.
# 3. What additional information does the interpreter provide about this type of error?
#       The interpreter says it cannot load such a file, and it gives us the
#       alleged path to the nonexistent file.
# 4. Where is the error in the code?
#       The error is in the brain of the programmer. Kidding. The error is
#       between the quotes. If one is to require a file, the file must exist.
# 5. Why did the interpreter give you this error?
#       The cartmans_essay.md file does not exist, or is at least not at the
#       specified path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
#     I found the first error to be the most difficult, because it gave the
#     error's location as being somewhere else in the file.
# How did you figure out what the issue with the error was?
#     I had to read the code and think, "What doesn't look right, here?"
# Were you able to determine why each error message happened based on the code?
#     Yes. These were all pretty isolated incidents.
# When you encounter errors in your future code, what process will you follow
# to help you debug?
#     I'll skim the error message, then look at the code. This method has worked
#     for me thus far. We'll see how it goes in the future.
