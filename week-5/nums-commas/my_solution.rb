# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The method, separate_comma, takes an integer as an argument.
# What is the output? (i.e. What should the code return?) a string with commas
# where appropriate.
# What are the steps needed to solve the problem?
# Turn the Fixnum into a String.
# Turn the String into an Array of string representations of the integers.
# Iterate over the array, putting commas into the array every three characters.


# 1. Initial Solution
# def separate_comma(int)
#   nums = int.to_s.split("")
#   result = Array.new
#
#   i = nums.length - 1
#   while i >= 0
#
#     count = 0
#     while count < 3 && i >= 0
#       result.unshift(nums[i])
#       i -= 1
#       count += 1
#     end
#
#     result.unshift(",") if i >= 0
#   end
#
#   result.join("")
# end

# 2. Refactored Solution

def separate_comma(int)
  result = Array.new

  i = int.to_s.length - 1
  catch do |out_of_digits|
    while true

      3.times do
        result.unshift int[i]
        i -= 1
        throw out_of_digits if i < 0
      end

      result.unshift ","
    end
  end
  result.join ""
end

# 3. Reflection
# What was your process for breaking the problem down?
# What different approaches did you consider?
# I thought about how to convert the input into the output.  I tried to visualize
# what I was working with through each step.  I considered using an array, but
# ended up using a string to represent the given integer argument.
#
# Was your pseudocode effective in helping you build a successful initial
# solution?
# The pseudocode helped, but I deviated from it.  It was a really rough draft,
# so to speak.  I feel tha pseudocode is more helpful for larger programs.
#
# What new Ruby method(s) did you use when refactoring your solution?
# I used case and throw, which is new for me.  Ther is a "while true" loop in there.
#
# Describe your experience of using the Ruby documentation to implement it/them
# (any difficulties, etc.).
# Looking up stuff in the documentation was easy.  The examples help a lot.  I
# just go to ruby-doc.org.
# Did it/they significantly change the way your code works? If so, how?
# Yes. The docs change how I write the code because that is how I find better
# ways to write the code.  The docs are also loaded with examples.
#
# How did you initially iterate through the data structure?
# Initially, I used a while loop to iterate through the data structue.  I had
# to repeat myself a few times, so I changed it to an infinite while loop that
# calls throw to terminate itself.
#
# Do you feel your refactored solution is more readable
# than your initial solution? Why?
# I feel that my refactored solution is more readable than my initial solution
# because I repeated myself less and there are fewer variables.
