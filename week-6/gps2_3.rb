# Your Names
# 1) Peter Stratoudakis
# 2) James Boyd

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.
def serving_size_calc(item_to_make, num_of_ingredients)
  cook_book = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !cook_book.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  ingredients_needed = cook_book[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_needed
  suggested_item = "#{remaining_ingredients} cookies"

  cook_book.each do |item, ingredients|
    suggested_item = item if remaining_ingredients == ingredients
  end

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients /
    ingredients_needed} of #{item_to_make}"
  end
   "Calculations complete: Make #{num_of_ingredients /
   ingredients_needed} of #{item_to_make}, you have" +
   " #{remaining_ingredients} leftover ingredients. " +
   "Suggested baking items: #{suggested_item}"
 end


# DRIVER CODE:

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("cake", 12)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# It saves a lot of times for other developers if your code is readable.
# It's important to take the time to make your code readable.
#
# Did you learn any new methods? What did you learn about them?
# We used hash's .values.  We raised an ArgumentError.  We used both p and puts.
# We used an implicit return.
#
# What did you learn about accessing data in hashes?
# We learned that if you call .each on a hash, and only supply one temporary
# variable in the pipes, like this: hash.each do |var| , that variable is
# referring to the hash's key/value pairs like this: [key, value].
# 
# What concepts were solidified when working through this challenge?
# Write code that other people can read easily.  Sometimes the shortest answer
# isn't the best or most readable answer.
