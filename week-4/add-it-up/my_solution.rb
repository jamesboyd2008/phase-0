# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Tim Kelly.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Create a sum variable and add each element of the array to the sum variable

# Input: the array
# Output: the total sum variable
# Steps to solve the problem.
#
# create method, sum variable, and iterate through each element of the array


# 1. total initial solution

# def total(array)
#   sum = 0
#   array.each do |x|
#     sum += x
#   end
# end


# 3. total refactored solution

def total(nums)
  sum = 0
  nums.each do |x|
    sum += x
  end
  sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Use a method to join the strings in the array

# Input: Array of strings
# Output: a variable set to our new string
# Steps to solve the problem.

# create method, define sentence variable, using each to iterate through the elements in the array slapping them together in our new sentence variable


# 5. sentence_maker initial solution

# def sentence_maker(words)
#   new_sentence = ""
#   words.each do |x|
#     puts x.class
#     new_sentence += x + " "
#   end
#   new_sentence.strip.capitalize + "."
# end

# 6. sentence_maker refactored solution

def sentence_maker(words)
  new_sentence = ""
  words.each do |x|
    new_sentence += x.to_s + " "
  end
  new_sentence.strip.capitalize + "."
end
