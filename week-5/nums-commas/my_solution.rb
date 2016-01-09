# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

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
def separate_comma(int)
  nums = int.to_s.split("")
  result = Array.new

  i = nums.length - 1
  while i >= 0

    count = 0
    while count < 3
      result.unshift(nums[i])
      i -= 1
      count += 1
    end

    result.unshift(",")
    i -= 1
  end

  result.to_s
end



# 2. Refactored Solution
# chars, each_char



# 3. Reflection
