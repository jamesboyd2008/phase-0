# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode
# input: an integer
# output: boolean
# steps:
# 1. Generate increasingly greater fibonacci numbers, comparing them with the input.
#     a. start at zero.
#     b. add one.
#     c. then add the previous number to that.
#     d. then add the previous number to that. On an on...
# 2. IF there is a match, return true.
#    IF, having compared the input to every fibonacci number smaller or equal to the input,
#    there is no match, and you are now comparing the input to a larger number, return false.


# Initial Solution

# def is_fibonacci?(num)
#   fib1 = 0
#   return true if fib1 == num
#   fib2 = 1
#
#   while fib2 <= num
#     return true if fib2 == num
#     temp = fib2
#     fib2 += fib1
#     fib1 = temp
#   end
#
#   false
# end



# Refactored Solution

def is_fibonacci?(num)
  fib1, fib2 = 0, 1
  return true if num == 0

  while fib2 <= num
    return true if fib2 == num
    temp = fib2
    fib2 += fib1
    fib1 = temp
  end

  false
end



# REFLECTION

# What concepts did you review or learn in this challenge?
# I had a brief logic review.  Thinking in code is a skill to be maintained/improved.
# I had practice thinking critically.

# What is still confusing to you about Ruby?
# Now, all of a sudden, I need no semicolons.  Ha.  There is plenty I don't know
# about Ruby.  I don't understand "Kernel".  I only have so much experience manipulating
# classes.  I don't understand I/O stream.  I could spend my whole life learning Ruby.
# That would not necessarily be a bad thing.

# What are you going to study to get more prepared for Phase 1?
# Writing more code :) I will keep doing these practice problems.
