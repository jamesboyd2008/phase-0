# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5 hours on this challenge.

# Release 0: Pseudocode is directly above it's corresponding methods.

# Initial Solution

# class BingoBoard
#
#   def initialize(board)
#     @bingo_board = board
#   end
#
#   attr_reader :bingo_board
#   # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#     # input: none
#     # output: a string containing a letter and a number, such as "B52"
#     # steps: The method selects a random integer from 0 to 4 (indexes of b, i, n, g, o array)
#     #        The method selects a random number from 1 to 100.
#     #        Returns the two combined, as a string.
#   def call
#     #returns letter and number (a string)
#     %w( B I N G O )[rand(5)] + (1 + rand(100)).to_s
#   end
#
#   # Check the called column for the number called.
#     # input: string, such as "G40".  This may just be an instance variable.
#     # output: 1 of 2 things: either nil, or the location of the number on the bingo board.
#     # steps: break input string down into characters.
#     #        IF first character is "B", search the first column for the number.
#     #        IF first character is "I", search the second column for the number.
#     #        IF first character is "N", search the third column for the number.
#     #        IF first character is "G", search the fourth column for the number.
#     #        or ELSE search the last column for the number.
#     #          IF the number is there, return the location of the number within the nested arrays.
#     #          or ELSE return nil.
#   def check(characters)
#     #replace the number with a string if the number is present
#     # Does your check method not replace anything if the number is not present?
#     # puts characters
#     letter_number = characters.clone.chars
#     letter = letter_number.shift # necessary?
#     # refactor to indexes of an array
#     case letter
#     when "B"
#       column = 0
#     when "I"
#       column = 1
#     when "N"
#       column = 2
#     when "G"
#       column = 3
#     else
#       column = 4
#     end
#
#     @bingo_board.each_with_index do |row, index|
#       if row[column] == letter_number.join("").to_i
#         return [index, column] # backwards from how a bingo player reads the paper
#       end
#     end
#
#     nil
#   end
#
#   # If the number is in the column, replace with an 'x'
#     # input: one variable which is either nil or a the location of the bingo-called number.
#     # output: nil. This method just modifies an instance variable (the bingo board/paper).
#     # steps: change the bingo paper instance variable at the location provided to "X".
#   def replace(location)
#     if location != nil
#       # puts location.to_s
#       @bingo_board[location[0]][location[1]] = "X"
#     end
#   end
#
#   # Display a column to the console
#     # I might not make this method.
#     # input: the column to be displayed
#     # output: nil. The column is displayed vertically to the screen, starting with the letter.
#     # steps: First display the column's letter and a newline.
#     #        Then disply each element in the column and a newline. Use iteration.
#   def display_column(column)
#     puts %w( B I N G O )[column]
#     @bingo_board.each do |row|
#       puts row[column]
#     end
#   end
#
#     # Display the board to the console (prettily)
#       # input: none. This method uses an instance variable: the bingo paper.
#       # output: none. Maybe nil. This method just displays the bingo paper.
#       # steps: Make a copy of the bingo paper to destroy.
#       #        Make a pretty output variable.
#       #        Iterate over the the columns, destructively removing the first element
#       #          and putting it into the pretty output variable, until there is nothing
#       #          left in your copied bingo paper.
#       #        Output the pretty variable with whitespaces in an easy-to-read fashion.
#   def display_board
#     puts "B  I  N  G  O"
#     @bingo_board.each do |row|
#       row.each do |num|
#         print num.to_s + " "
#         print " " if num.to_s.length < 2
#       end
#       print "\n" # same as puts ""
#     end
#
#     print "\n"
#   end
# end

# Does the board display to the console correctly? You can check this using your eyes.
# new_game = BingoBoard.new(board)
# puts stamp_location = new_game.call
# stamp_location = new_game.check("B83")
# puts stamp_location.to_s
# if stamp_location != nil
#   new_game.replace(stamp_location)
#   puts new_game.bingo_board.to_s
#   #new_game.bingo_board.each { |row| puts row.to_s }
# end

# puts stamp_location.to_s
# puts new_game.check("B83") == [2, 0]
# puts new_game.check("I70") == [4, 1]
# puts new_game.check("O88") == [0, 4]
# p new_game.check("N17") == nil

# new_game.display_column(0)
# new_game.display_column(4)
# new_game.display_board

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  attr_reader :bingo_board

  # Returns a possible location to stamp on the player's bingo board.
  def call
    %w( B I N G O )[rand(5)] + (1 + rand(100)).to_s
  end

  # This checks your board to see if you can stamp a square.
  def check(characters)
    letter_number = characters.clone.chars
    letter = letter_number.shift

    column = nil
    %w( B I N G O).each_with_index do |character, index|
      column = index if letter == character
    end

    @bingo_board.each_with_index do |row, index|
      if row[column] == letter_number.join("").to_i
        return [index, column]
      end
    end

    nil
  end

  # This "stamps your square". That is, it puts an "X" when you have a match.
  def replace(location)
    if location != nil
      @bingo_board[location[0]][location[1]] = "X"
    end
  end

  # This displays a column.  This method doesn't get used.
  def display_column(column)
    puts %w( B I N G O )[column]
    @bingo_board.each do |row|
      puts row[column]
    end
  end

  # Displays your bingo board in a legible fashion.
  def display_board
    puts "B  I  N  G  O"
    @bingo_board.each do |row|
      row.each do |num|
        print num.to_s + " "
        print " " if num.to_s.length < 2
      end
      print "\n"
    end

    print "\n"
  end

  # Calls other methods to simulate a game of bingo. Takes user input.
  # Nothing happens when you get bingo :(
  def play
    answer = nil
    until answer == "yes" || answer == "no"
      puts "Do you want to play bingo? (yes or no)"
      answer = gets.chomp
      puts ""
    end

    if answer == "yes"
      self.display_board
      keep_going = "yes"
      while keep_going == "yes"
        puts "Do you want to keep playing bingo? (yes or no)"
        keep_going = gets.chomp
        puts ""

        if keep_going == "yes"
          stamp_location = nil
          until stamp_location != nil
            potential_stamp = self.call
            puts "Do you have #{potential_stamp} ?"
            sleep(0.025)
            stamp_location = self.check(potential_stamp)
          end

          puts ""
          self.replace(stamp_location)
          self.display_board
        end
      end

    end
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudocode was the most difficult part.  I would prefer quicker, sloppier
# pseudocode when I'm working by myself.  With a pair, it seems more important
# to me that someone else should be able to read my notes.

# What are the benefits of using a class for this challenge?
# I feel that it make the code recyclable and easier to read.

# How can you access coordinates in a nested array?
# You can access cooridinates in
# a nested array thusly: array_name[0][7][2]

# What methods did you use to access and modify the array?
# I used .each and .each_with_index.

# Give an example of a new method you learned while reviewing the Ruby docs.
# This might be my first successful implementation of Enumerable#each_with_index.
# I also used sleep and self.

# Based on what you see in the docs, what purpose does it serve, and how is it called?
# Kernel#sleep just pauses everything for the amount of seconds in the argument.
# You can also give it minutes, if you want. Seconds just looks like this: sleep(3)
# Enuerable#each_with_index works like Enumberable#each, but you can reference
# elements' indexes mid-iteration.  There's a demo on lines 193-197.

# How did you determine what should be an instance variable versus a local variable?
# If more than one method was going to reference the same variable, I made it an
# instance variale.

# What do you feel is most improved in your refactored solution?
# BingoBoard#play ties the whole thing together and makes it a playable game.
# I swapped out a case switch for another Enumberable#each_with_index, but I think
# the case statement may have been easier to read.
