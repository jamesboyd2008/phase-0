# I worked on this challenge with: Jonathan Case


# Your Solution Below

def valid_triangle?(a, b, c)
  triangle = [a, b, c]
  all_sides = a + b + c

  biggest = triangle[0]
  triangle.each do |side|
    if side > biggest
       biggest = side
    end
  end

  if all_sides - biggest > biggest
    return true
  end
    false
end
