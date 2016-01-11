# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.25 hours on this challenge.

# 0. Pseudocode



# 1. Initial Solution

# class Die
#   # Input: This method takes a number bigger than 0 as its one argument
#   # Output: This method returns a new object of class Die.
#   # Steps: Define the object's state.  Make an instance variable, @sides,
#   #        equal to the method's one argument.  Raise an error is the method
#   #        is attempted to be initialized with less than one side.
#   #        (should be at least two or three haha)
#   def initialize(sides)
#     @sides = sides
#     raise ArgumentError.new("Need more sides") if sides < 1
#   end
#
#   # Input: nothing
#   # Output: returns the methods instance variable, @sides
#   # Steps: one step. Return @sides.
#   def sides
#     @sides
#   end
#
#   # Input: This method accepts no arguments.
#   # Output: Returns a random number between 1 and the number of sides (@sides).
#   # Steps: One step. Return one random number. Make sure it is more than zero
#   #        and no more than the total number of sides.
#   def roll
#     rand(@sides) + 1
#   end
# end
#


# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Need more sides") if sides < 1
  end

  attr_accessor :sides

  def roll
    rand(@sides) + 1
  end
end


# 4. Reflection
# What is an ArgumentError and why would you use one?
# It's an object of type Class that is just a way to help someone troubleshoot.
# You raise ArgumentErrors when something is wrong, such as someone trying to
# create an imaginary die with zero sides.
#
# What new Ruby methods did you implement?
# What challenges and successes did you have in implementing them?
# I used attr_accessor (could have used attr_reader, i guess), rand, and raise.
# I always have to look up documentation when I haven't used a method in a while.
#
# What is a Ruby class?
# A Ruby class is a code construct that describes an object's state and behavior.
# It is directions for how to build an object.  Every object has a class.
#
# Why would you use a Ruby class?
# Using Ruby classes to build objects make things a whole lot easier.  It saves
# a lot of time and can keep you code DRY.
#
# What is the difference between a local variable and an instance variable?
# Scope.  An instance variable is available throughout an instance of an object.
# You can keep coming back to it from wherever you can reference it's object.
# A local variable is available throughout the scope in which it is defined,
# like within a method, for example.  You can only get to it from within that
# same, usually narrower scope.
#
# Where can an instance variable be used?
# You can use an instance variable with any of an object's methods, or
# anywhere in general that you can successfully refer to that instance of that
# object. Instance variables start with @.
