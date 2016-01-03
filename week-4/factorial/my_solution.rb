# Factorial

# I worked on this challenge with: Tim Kelly.

# Go through each number in a range of one up to THE number, multiplying as we
# go.
# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
    return 1
  end
  product = 1
  (1..number).each do |i|
    product *= i
  end
  product
end
