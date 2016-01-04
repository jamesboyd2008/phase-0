# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  return nil if list_of_words.empty?
  shortest = list_of_words[0]
  return shortest if list_of_words.length == 1
  
  i = 1
  begin
    shortest = list_of_words[i] if shortest.length > list_of_words[i].length
    i += 1
  end until i >= list_of_words.length
  shortest
end
