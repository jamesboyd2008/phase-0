# Pad an Array

# I worked on this challenge with: Ryan Salerno

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# the pad method requires three arguments: an array, an integer
# (which can't be smaller than array.length), and an optional padding object

# What is the output? (i.e. What should the code return?)
# Your newly manipulated array

# What are the steps needed to solve the problem?

# Determine the length of the array
# Compare the length of the array to the minimum size
# If it's equal to or smaller, just return the array
# Else pad it with the third argument until it's big enough

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   length_of_array = array.length
#   if min_size <= length_of_array
#     return array
#   else
#     i = length_of_array
#     while i < min_size
#       array.push(value)
#       i += 1
#     end
#   end
#   return array
# end
#
# def pad(array, min_size, value = nil) #non-destructive
#   length_of_array = array.length
#   result = Array.new
#   if min_size <= length_of_array
#     array.each { |element| result << element }
#     return result
#   else
#     array.each { |element| result << element }
#     i = length_of_array
#     while i < min_size
#       result.push(value)
#       i += 1
#     end
#   end
#
#   return result
# end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if min_size <= array.length
  (min_size - array.size).times { array.push value }
  array
end

def pad(array, min_size, value = nil) #non-destructive
  return array.clone if min_size <= array.length
  array + Array.new(min_size - array.size, value)
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes.  We could have broken those steps into sub-steps, though.  Breaking it
# down made the whole process go faster.
#
# Once you had written your pseudocode, were you able to easily translate
# it into code? What difficulties and successes did you have?
# 99% of our initial solution came in under 5 minutes. We then spent over an hour
# troubleshooting line 57.  The pseudocode was useful, though.
#
# Was your initial solution successful at passing the tests?
# If so, why do you think that is? If not, what were the errors you encountered
# and what did you do to resolve them?
# Our initial solution was close, but we used the variable "array" on line 57 where
# we ended up using "result".  We did trial and error.  Then we reviewed our
# code a few times.
#
# When you refactored, did you find any existing methods in Ruby to clean up your
# code?
# Yes.  We repeated ourselves a little, initially.  We refactored our if/else
# statement some and our loop.
#
# How readable is your solution?
# Did you and your pair choose descriptive variable names?
# I feel that our final solution is plenty readable, perhaps moreso than our
# initial solution. Here is a less readable, one-liner:
#
# def pad(a, b, c = nil) #non-destructive
#   b <= a.length ? a.clone : a + Array.new(b - a.size, c)
# end
#
# What is the difference between destructive and non-destructive methods
# in your own words?
# A destructive method alters the object upon which it is called and/or
# it's arguments.  A non-destructive method does not alter pre-existing objects.
