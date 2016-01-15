# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent hours on this challenge.

# Pseudocode

# This class makes dice. To create a die, the object needs at least one side.

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides # still returns the number of sides, in this case 6
# die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
# If Die.new is passed an empty array, it should raise an ArgumentError

# Initial Solution

# Input: To make a new die, the input must be an array of strings, in which the
#        strings represent sides of the die.
# Output: a new object of class Die, that is, a new die!
# Steps: 1. IF an empty string is provided as a side, an error is raised.
#        2. create an instance variable who's value is an array of side names.
# class Die
#   def initialize(labels)
#     if labels.empty?
#       raise ArgumentError.new("Need some sides")
#     end
#     @sides = labels
#   end
#
# # input: none
# # output: the number of sides of the die
# # steps: one step. Just return the length of the array of sides.
#   def sides # refactor to attr_accessor :sides.size
#     @sides.length
#   end
#
# # input: none. This function has no parameters.
# # output: returns a random side of the die as a string.
# # steps: one step. Just spit out any side of the die.
#   def roll
#     @sides[rand(@sides.length)]
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Need some sides")
    end
    @sides = labels
  end

  def sides
    @sides.size
  end

  def roll
    @sides[rand(@sides.length)]
  end
end

# Reflection

# What were the main differences between this die class and the
# last one you created in terms of implementation?
# Did you need to change much logic to get this to work?
# The implementation was very similar. The specs are a little different.  The
# sides method returns the number of sides for this die class. In the last one,
# I believe it returned an array of all the sides.  I did not need to change much.
#
# What does this exercise teach you about making code that is easily
# changeable or modifiable?
# This exercise taught me to make code that is easiy changeable or modifiable so
# that it can be used more.
#
# What new methods did you learn when working on this challenge, if any?
# I don't think I used any new methods here, but the review helped.
#
# What concepts about classes were you able to solidify in this challenge?
# Make them reusable.
