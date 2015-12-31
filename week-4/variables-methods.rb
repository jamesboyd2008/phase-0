# This chunk of code asks for the user's name, then greets the user.
print "Enter your first name:  "
first_name = gets.chomp
print "Enter your middle name:  "
middle_name = gets.chomp
print "Enter your last name:  "
last_name = gets.chomp
puts "Greetings, #{first_name} #{middle_name} #{last_name}!\n\n"

# This chunk of code asks for the user's favorite number, then suggests that a
# number one greater than their favorite number as being bigger and better.
print "Enter your favorite number:  "
fav_num = gets.chomp
puts "Perhaps #{(fav_num.to_i + 1).to_s} is a bigger, better number."

# How do you define a local variable?
#   You define a local variable by simply typing what you want the name to be,
#   followed by an equals sign (=) and then the value for the variable, which may
#   be a Fixnum, String, or any class, even if you made it up.
#
# How do you define a method?
#   You define a method like this:
#
#   def method_name(parameter,another_parameter)
#     #Your code goes here
#   end
#
# What is the difference between a local variable and a method?
#   A local variable doesn't do anything by itself besides holding a value.
#   A method, or function, can do things. It can take input, process that info,
#   and return output, for example.
#
# How do you run a ruby program from the command line?
#   Thou shalt type: ruby program_name.rb
#
# How do you run an RSpec file from the command line?
#   Thou shalt type: rspec spec_filename.rb
#
# What was confusing about this material? What made sense?
#   Writing RSpec is something of which I haven't done much, yet.
#   Ruby is still more familiar to me than HTML, so it was a nice refresher.
#
# Add a link to each exercise solution file as well so your peers can
# easily look at your code.
#   https://github.com/jamesboyd2008/phase-0/blob/master/week-4/defining-variables.rb
#   https://github.com/jamesboyd2008/phase-0/blob/master/week-4/variables-methods.rb
#   https://github.com/jamesboyd2008/phase-0/blob/master/week-4/address/my_solution.rb
#   https://github.com/jamesboyd2008/phase-0/blob/master/week-4/define-method/my_solution.rb
#   https://github.com/jamesboyd2008/phase-0/blob/master/week-4/math/my_solution.rb
