# Leap Years

# I worked on this challenge by myself.


# Your Solution Below
# if the year is divisible by four and not divisible by 100, it's a leap year.
# exception: if the year is divisible by 400, it is a leap year.
def leap_year?(year)
  #((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) ? true : false
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
  end
  false
end
