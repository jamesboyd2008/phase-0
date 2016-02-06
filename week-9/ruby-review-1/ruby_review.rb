# Your previous JavaScript content is preserved below:
#
# # I worked on this challenge [by myself, with: ].
# # This challenge took me [#] hours.
#
#
# # Pseudocode
# Define method
# input : array of integers
# output: array with multiples of 3 replaced with Fizz, multiples of 5 replaced with Buzz,
# mupltiples of 3 and 5 replaced with FizzBuzz
#

# Steps

# iterate over input array
# conditional statement evaluating each element in array by all terms
# if divisible by both 3 and 5 replace element with "FizzBuzz"
# if divisible by 3 replace with "Fizz"
# if divisible by 5 replace with "Buzz"
# return output array with replaced elements



# # Initial Solution

# def super_fizzbuzz(array)
#   out_array = []
#     array.each do |num|
#       if num % 3 == 0 && num % 5 == 0
#         num = "FizzBuzz"
#         out_array << num
#       elsif num % 3 == 0
#         num = "Fizz"
#         out_array << num
#       elsif num % 5 == 0
#         num = "Buzz"
#         out_array << num
#       else
#         out_array << num
#       end
#       # refactor to only add to out_array once
#     end
#
#   p out_array
# end
#
# super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
# super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
# super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]
# super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# # Refactored Solution
#
def super_fizzbuzz(array)
  out_array = []
    array.each do |num|
      if num % 3 == 0 && num % 5 == 0
        num = "FizzBuzz"
      elsif num % 3 == 0
        num = "Fizz"
      elsif num % 5 == 0
        num = "Buzz"
      end
        out_array << num
    end

  out_array
end

# # Reflection

#
# What concepts did you review in this challenge?
# We reviewed Ruby haha.  We iterated over an array and reviewed some syntax.
# I can't tell whether I like switching back and forth between languages frequently.
# Maybe I aught best get used to it.
#
# What is still confusing to you about Ruby?
# There are depths of logical complexity to which no one has plunged within every
# programming language.  Infinities within infinities.  I imagine the vast majority of all
# programming languages will always seem beyond confusing.  I feel prepared for
# Phase 1, however, as far a Ruby is concerned.

# What are you going to study to get more prepared for Phase 1?
# The inside of my eyelids.  Monday approaches.  Kidding.  I'll do some other
# Ruby challenges in the review module.
