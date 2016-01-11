# Calculate the mode Pairing Challenge

# I worked on this challenge with:

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? A group strings or numbers (array)
# What is the output? (i.e. What should the code return?) The mode/s of the inputted array
# What are the steps needed to solve the problem?

# Take the input, convert it to an array
# We can make a hash, who's keys are the UNIQUE values in the input array
# Then we can iterate over the input array for every hash key, making the
# value for each key the number of occurences of that key in the input array.
# Then, we can somehow organize that hash (maybe into array?) in such a way
# that it is in decending value order.  IF there is a tie for first place,
# we return all the ties. If there is no tie, we just return first place.
# Figure out if the order of modes when there are multiple modes matters.
#  - Number order and alphabetical order


# 1. Initial Solution

# def mode(items)
#   # use the built-in Array.uniq method
#   keys = james_uniq(items)
#   occurences = Hash.new

#   keys.each do |element|
#     count = 0
#     items.each do |item|
#       if item == element
#         count += 1
#       end
#     end

#     occurences[element] = count
#   end

#   count = 0
#   # remove mode declaration
#   mode = []
#   # iterate over occurences, find out which value is biggest
#   occurences.each do |key, value|
#     if value > count
#       # try comma for two variable declarations on same line
#       mode[0] = key
#       count = value
#     end

#   end

#   # see if there is a tie for mode
#   # WHILE ther is a tie, keep adding all the modes to the mode array
#   occurences.each do |key, value|
#     # if the value is equal to count AND the mode array does not contain
#     # this key yet
#     if value == count && !(mode.include?(key))
#       mode << key
#     end
#   end

#   mode
# end

# def james_uniq(input_array)
#   unique_elems = []
#   input_array.each do |elem|
#     unique_elems << elem if !unique_elems.include? elem
#   end
#   unique_elems
# end

# puts mode([1, 3, 5, 7, 7, 1, 1, 7]).to_s

# 3. Refactored Solution

def mode(items)
  keys = items.uniq
  occurences = Hash.new

  keys.each do |element|
    occurences[element] = items.count { |item| item == element }
  end

  count = 0
  mode = []
  occurences.each do |key, value|
    if value > count
      mode[0], count = key, value
    end
  end

  occurences.each do |key, value|
    if value == count && !mode.include?(key)
      mode << key
    end
  end

  mode
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We used a hash to map out the elements in the input array with their
# corresponding number of occurences within that array because hashes have all unique
# keys, and we wanted pairs of values (one value per pair being unique) in our
# data collection object.
#
# Were you more successful breaking this problem down into implementable
# pseudocode than the last with a pair?
# We were more successful breaking this problem down into implementable
# pseudocode than the last one.  It's still choppy, though.  We'll get better.
#
# What issues/successes did you run into when translating your pseudocode to code?
# We did not have enough sub-steps for our steps.  This is generally the case,
# though.  Keeping my train of thought from one code construct to another gets
# tricky, but pseudocode helps with that.  The pseudocode was a bit
# stream-of-thoughty, too.  I might do ordered lists in the future.
#
# What methods did you use to iterate through the content? Did you find any good
# ones when you were refactoring? Were they difficult to implement?
# We used ".each" for most of our iterating.  We used ".count" after
# refactoring.  We had to look up the documentation to implent it.  ".uniq" is
# a built-in ruby method that is a cooler version of our "james_uniq()" method.
