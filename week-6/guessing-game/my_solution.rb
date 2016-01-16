# Build a simple guessing game


# I worked on this challenge by myself.
# I spent hours on this challenge.

# Pseudocode

# Input: The class needs an integer to construct a new game.
# Output: When the number has been guessed, one of the methods returns true.
# Steps: 1. The game object is initialized with an integer.
#           a. The integer may be picked randomly, for a more fun guessing game.
#        2. One of the methods compares the "guess" with actual number.
#           a. IF the guess is low, the method tells you.
#           b. IF the guess is high, the method tells you.
#           c. IF the guess is accurate, the method tells you.
#        3. One of the methods, using the method above, determines if the game is
#           over, returning TRUE or FALSE.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#     #@guess = nil
#   end
#
#   attr_accessor :answer # is this necessary?
#
#   def guess(guess)
#     # :high, :low, :correct
#
#     # this IF statement ensures @guess isn't nil.
#     if guess == nil
#       if @answer == 5
#         guess = 6
#       else
#         guess = 5
#       end
#     end
#
#     @guess = guess # is this necessary?
#     if @guess > @answer
#       return :high
#     elsif @guess < @answer
#       return :low
#     end
#       :correct
#   end
#
#   def solved?
#     #boolean
#     guess(@guess) == :correct
#   end
#
#   # Make sure you define the other required methods, too
# end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif guess < @answer
      return :low
    end
      :correct
  end

  def solved?
    @guess == @answer
  end
end





# Reflection
#
# How do instance variables and methods represent the characteristics
#   and behaviors (actions) of a real-world object?
# The variables can represent characteristics, that is, more or less static
# attributes of a real-world object. Methods can represent behaviors of an
# object.
#
# When should you use instance variables? What do they do for you?
# You should use an instance variable when it might be called by another
# method elsewhere in the class. They can store information for later.
#
# Explain how to use flow control. Did you have any trouble using it in
# this challenge? If so, what did you struggle with?
# As far as I'm tracking, flow control is fancy speak for IF statements. When
# situations depend upon other situations in a program, flow control can be used
# to sort out the situation. Here's some shotty pseudocode, for example:
#
#   IF hungry
#     THEN check the fridge
#       IF the fridge is empty
#         THEN go buy food.
#       IF the fridge has food
#         and IF that food is edible
#           THEN eat the food.
#         IF the food is inedible
#           THEN throw it out and go buy food.
#
# Why do you think this code requires you to return symbols?
#   What are the benefits of using symbols?
# Symbols are like strings you can't change. Boolean values work when there are
# only two possible evaluations of something.  Sometimes there are more than two
# possible answers to something, and symbols can be useful in such a situation.
#
# this part is just for fun when running my_solution.rb
# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil
#
# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end
#
#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end
#
# puts "#{last_guess} was correct!"
