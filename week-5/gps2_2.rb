# Method to create a list
# input: Alright! We want to create an array or a hash that has strings separated by spaces.
# steps:
# First, let's create a new hash.
# Fill the hash with items that come from the optional argument
# Return the hash with all the key/value pairs
# output: The completed hash.


def create_list(list = {})
  list
end

james_groceries = create_list()

# puts (create_list({"carrots" => 1, "celery" => 1, "donkey" => 1})).class
# puts create_list({"carrots" => 1, "celery" => 1, "donkey" => 1}).class == Hash
# puts (create_list()) == Hash.new

# Method to add an item to a list
# input: A hash with key/value pairs
# steps:
# So, for this hash, we want to add a new key/value pair to an existing Hash.
# output: The new Hash

def add_item(list, item, quantity)
  list[item] = quantity
  list
end

add_item(james_groceries, "carrots", 7)
add_item(james_groceries, "avacados", 79)

# Method to remove an item from the list
# input: the list (a hash), item to be removed
# steps: remove the item from the list, return the updated list
# output: the updated list

def remove_item(list, item)
  list.delete(item)
  list
end

#puts remove_item(james_groceries, "carrots")

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: update the quantity, return new list
# output: updated list

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

update_quantity(james_groceries, "carrots", 80)
# puts james_groceries.to_s

# Method to print a list and make it look pretty
# input: list
# steps: make it pretty, return it
# output: pretty list

def pretty_list(list)
  # new_list = ""
  # list.each { |item, quantity| new_list << "You want #{quantity} #{item}\n" }
  # return new_list
  list.each { |item, quantity| puts "You want #{quantity} #{item}\n" }
end

pretty_list(james_groceries)

# What did you learn about pseudocode from working on this challenge?
#   I learned that pseudocode can be written quick at times in a simple format.
#   I'll probably just use the input, output, steps format.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   An Array would work, but a Hash guarantees that you will not have duplicate
#   items, that is, you'll be less inclined to buy more of one item than you
#   intended.  With an Array, you'll have indexes, though.
# What does a method return?
#   A method returns the last thing evaluated, unless the interpreter evaluates
#   a return statement first, which it will return.  Otherwise, methods return
#   nil by default.
# What kind of things can you pass into methods as arguments?
#   You can pass any object and/or number of objects you want into a method, so
#   long as the mehtod's parameters will accept your arguments.
# How can you pass information between methods?
#   You pass information between methods with arguments.  Just watch out for
#   scope issues.
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   This challenge helped me with pseudocode.  We didn't have too many scope
#   issues.  We also learned a little bit about hashes.  It's good to review
#   when you need it.  Part of me wanted to write these methods into the Hash
#   class, then define them like: def self.add(item, quantity).  I'm a little
#   hazy on doing that, though.
