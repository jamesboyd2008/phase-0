
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Ryan Salerno.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: A 16 digit integer
# Output: boolean value of whether the input is a valid credit card number
# Steps:
# origin is the 16 digit integer that gets taken as an argument
# Step 1: throw ArgumentError if num != 16 digits
#make a new array to store the doubled values
# Iterate backwards, double every other number, and push too the storage array

# Step 2: takes what is returned from step one as the argument
# Add up each number in the array

# Step 3: Takes value from Step 2 and see if it's divisible by 10
# Step 3 returns true or false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#
#   def initialize(num)
#     # throws ArgumentError if num != 16 digits
#     @origin = num.to_s
#     raise(ArgumentError, "Wrong number of digits") unless @origin.length == 16
#   end
#
#   def step1
#     @int_array = []
#     @origin.chars.each { |elem| @int_array << elem.to_i }
#     @double_ints = []
#
#     i = @int_array.length - 1
#     while i >= 0
#       if i % 2 == 0
#         @double_ints.unshift(@int_array[i] * 2)
#       else
#         @double_ints.unshift(@int_array[i])
#       end
#       i -= 1
#     end
#
#     @double_ints
#   end
#
#   def step2
#     @add_these_ints = []
#     @double_ints.each do |elem|
#       if elem.to_s.length != 1
#         elem.to_s.split("").each { |int| @add_these_ints << int.to_i }
#       else
#         @add_these_ints << elem
#       end
#
#     end
#     #p @add_these_ints.inject{|sum,x| sum + x }
#     @sum = @add_these_ints.inject(:+)
#   end
#
#   def check_card
#     step1
#     step2
#     @sum % 10 == 0
#   end
# end
#
#
# p card = CreditCard.new(4563960122001999)
# p card.step1
# p card.step2
# p card.check_card



# Refactored Solution

class CreditCard
  def initialize(num)
    @origin = num.to_s
    raise(ArgumentError, "Wrong number of digits") unless @origin.length == 16
  end

  def step1
    @int_array = []
    @origin.chars.each { |elem| @int_array << elem.to_i }
    @double_ints = []

    i = @int_array.length - 1
    while i >= 0
      if i.even?
        @double_ints.unshift(@int_array[i] * 2)
      else
        @double_ints.unshift(@int_array[i])
      end
      i -= 1
    end

    @double_ints
  end

  def step2
    @add_these_ints = []
    @double_ints.each do |elem|
      if elem.to_s.length != 1
        elem.to_s.split("").each { |int| @add_these_ints << int.to_i }
      else
        @add_these_ints << elem
      end

    end
    @add_these_ints.inject(:+)
  end

  def check_card
    step1
    step2 % 10 == 0
  end
end



# Reflection

# What was the most difficult part of this challenge for you and your pair?
# I felt that the most difficult part for us was the pseudocode.  Once we had that typed, the
# rest came along at a decent pace.  This further instills the value of good pseudocode.
#
# What new methods did you find to help you when you refactored?
# We used Enumerable#inject in our initial solution, but it's still new to us.
# The syntax with which we raised our error is new to me, also.
# 
# What concepts or learnings were you able to solidify in this challenge?
# Generally, the more you can break down your pseudocode, the better.  Sub-steps help,
# especially when pairing.
