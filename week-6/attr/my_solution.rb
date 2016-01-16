#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: These classes to not take any input.
# Output: One string, a greeting with the correct name.
# Steps: One method, upon initialization, sets a class variable to equal a name.
#        The other method creates and instance of the first method and displays the
#        name in the first method's class variable to the console inside another string.

class NameData
  def initialize
    @name = "James"
  end

  attr_reader :name
end


class Greetings
  def initialize
    @james = NameData.new
  end

  def greet
    puts "Why, hello, #{@james.name}."
  end
end

hello = Greetings.new
hello.greet

# Reflection

# release_1.rb
# What are these methods doing?
# Some just return the value of instance variables and some change the value.
#
# How are they modifying or returning the value of instance variables?
# They just take the new value as the argument and set the variable to that value
# in the method body. I don't believe the equals sign in the method name means anything.
# It's just a clue for programmers.

# release_2.rb
# What changed between the last release and this release?
# This new release has an attr_reader for :age  .  This is a replacement for the
# what_is_age method.
#
# What was replaced?
# The what_is_age method was replaced with attr_reader :age.
#
# Is this code simpler than the last?
# Yes.  I feel that this code is less verbose.

# release_3.rb
# What changed between the last release and this release?
# An attr_writer for :age was added.
#
# What was replaced?
# `attr_writer :age` replaced `change_my_age` .
#
# Is this code simpler than the last?
# Yes.  This code is simpler.

# Release 6

# What is a reader method?
# A reader method just returns the value of a variable, usually an instance variable.
# attr_reader (and attr_accessor also, I guess) is a simple reader method.

# What is a writer method?
# A writer method sets the value of a variable, usually and instance variable.
# attr_writer is a writer method.  attr_accessor both reads and writes.

# What do the attr methods do for you?
# They return and modify the values of instance variables.

# Should you always use an accessor to cover your bases? Why or why not?
# No, you should not always use an accessor to cover your bases because sometimes
# you don't want all the bases covered so that variables don't get editted or
# viewed when you don't want those things to happen.

# What is confusing to you about these methods?
# Changing back and forth from ":" to "@" confuses me.  For now, I am just accepting
# the swapping of the two as an exception when part of attr method.
