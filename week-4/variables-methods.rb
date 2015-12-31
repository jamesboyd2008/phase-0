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
