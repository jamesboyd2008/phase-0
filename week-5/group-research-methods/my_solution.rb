# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = source.select do|x|
    x = x.to_s
    x.include? thing_to_find
  end
  answer
end

def my_hash_finding_method(source, thing_to_find)
   answer = []
   source.select do |k,v|
    if v == thing_to_find
      answer << k
    end
   end
   answer
end

my_hash_finding_method(my_family_pets_ages, 3)
my_array_finding_method(i_want_pets, "t")
# Identify and describe the Ruby method(s) you implemented.
# - on the array method I used .select and with each string object inside the array, I used .include? .select when used on an array, iterates through the array and selects objects based off of what the block evaluates. the .include? method evaluates a string and issues true or false if the string includes what you specify. In this case, i had to convert all objects into strings so that .include? would work, then whichever strings had a "t" would be evaluated as true, those strings were then selected by .select and stored in the variable answer as an array.
# - on the hash method, I used .select and << (push). the method .select iterates through a hash, and selects whatever you specify in the code block. the << method pushes an object into an array variable. in this case, i've iterated through the hash using select, and whenever a value equals the thing to find, the corresponding key is pushed into the array. It might seem strange to use select(a method that should select the returned objects) and then push to an array within the iteration, but my reason for doing that is that the desired result is for the keys only to be listed in an array. using .select on a hash returns a hash with both the keys and values, so I decided to use push on just the keys to get the desired output. In my research, I couldn't find a hash method that would iterate and return output as just an array, but if anyone finds a method or some way of doing that, I would be interested in hearing about it.
# - as far as researching and figuring out how to use methods properly, I find that a quick read of ruby docs and then experimenting in irb is the best way to go. its simple, fast, and just gives immediate feedback of how to write the syntax and what kind of output you will get.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |word| word.is_a?(Integer) ? word + thing_to_modify : word }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value| source[key] = value + thing_to_modify }
end

# Identify and describe the Ruby method(s) you implemented.
#
# The first solution here was the tricky one for me. I struggled a lot with this method as I feel I am somewhat weak on the iteration front, especially when it comes to "selectively iterating". I knew there was some kind of logical statement I had to include to target only integer values in the array but I was unsure how to modify them destructively. I ended up using a destructive method map! combined with a "ternary operator" which was a very new concept for me. This method iterates through the array and for every element in the array, it checks to see if the element is an integer. If the element is an integer, is adds the user input to the "word" (integer element in the array). If the "word" is not an integer, is simply leaves it alone (makes it the "original" word itself.) I found ternary operators very useful in combining a kind of boolean "if" statment with a destructive iteration process.

# My next statment was more straightforward for me. The key (so to speak) here was getting the syntax right for the "add key/value pair to a hash" part of this method. This method iterates over the hash and for every key/value pair, it adds the user input "thing_to_modify" to the existing hash value for every key. It does this by updating every key value pair in the hash and in the process adds the user input to the value of every key/value pair.
#
#
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}

# Person 3
def my_array_sorting_method(i_want_pets)
  integer_array = []
  string_array = []
  new_array = i_want_pets.clone
  new_array.each do |array_value| if array_value.is_a? Integer
    integer_array.push(array_value)
  else
    string_array.push(array_value)
  end
  end
  integer_array.sort.concat(string_array.sort)
end

def my_hash_sorting_method(my_family_pets_ages)
  new_array = my_family_pets_ages.clone
  new_array.sort_by {|pet_name, pet_age| pet_age}
end
# Identify and describe the Ruby method you implemented
#   The method I used for the array had to take account that the array had integer and strings values in the array. When that happens you lose access to some array class methods like “.sort” because the values have to be all the same object class. So I started by creating an array for intergers and an array for strings, and a cloned array of the original in order to not make it destructive. I then iterated over the cloned array and if a value “is_a? Integer” I pushed it to the interger array, and else I pushed it to the string array. Then I needed to combine the two arrays, so I used “.concat” to merge them.
#   The hash sorting method was less complicated than the array. As in the array, I had to create a clone to make it non-destructive, I then took that array and used the enumerable method “.sort_by { |k,v| block }” and that gave me the correct answer.

# Teach your accountability group how to use the methods
#   I am little confused on this question; just call the method with a correct array or hash.

# Share any tricks you used to find and decipher the Ruby Docs
#   I first like to scan Ruby Docs and see if I can use a method. If I cannot find a method inside Ruby Docs, I then search the process in Google and look for what methods other people are using to help point me in the right direction. I then find a suitable method, I copy and paste it from Ruby docs into the code to make sure I am writing the correct syntax and I plug the data in.



def my_array_deletion_method!(source, thing_to_delete)
  source.each do |x|
    if x.to_s.include?(thing_to_delete)
      source.delete(x)
    end
  end
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |x, y|
    if x.include?(thing_to_delete)
      source.delete(x)
    end
  end
end





# Identify and describe the Ruby method(s) you implemented.

#I used .include? and .delete. To check an array for an item you would do array.include?(item). It returns true if item is part of the array.

#I also used delete. The syntax to delete an item from an array is array.delete(item). The delete method is naturally destructive.
#
#I didn't really learn any tricks for the docs, sorry guys.


# Person 5

# input: an array of integers and words
# output: an array of two arrays, each containing the elements sorted by class.
# steps: split the groups, then return them in order.
def my_array_splitting_method(source)
  classes = source.group_by { |x| x.class }
  [classes[Fixnum], classes[String]]
end

# input: hash of keys/values corresponding to names/ages, respectively.
# output: array of 2 arrays, each containing a series of arrays containing
# two elements, one being a pet name, and one being an age.
# steps: split the groups, then return them in order.
def my_hash_splitting_method(source, age)
  chrono = source.group_by { |key, value| value <= age }
  [chrono[true], chrono[false]]
end

# Identify and describe the Ruby method(s) you implemented.
# I used .group_by, a method from the Enumerable module, to iterate over the
# data collections, separating values based on the result of the code block.
# Then, via implicit return, the method returns the elements in a specified order.

# Teach your accountability group how to use the methods. Share any tricks you used to
# find and decipher the Ruby Docs.
# Alls ya do to use .group_by, which works for arrays, hashes, ranges, and any
# other class that iterates over a data collection with .each.  It returns a
# hash in which the keys are all of the results of the data block.  The values
# are the elements from the original data collection that evaluated to those
# particular keys.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I can spend too long looking for a fancy, built-in method when I can write my
# own quicker.  I just lucked out this time. Yay!
