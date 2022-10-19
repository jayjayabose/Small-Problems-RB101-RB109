# PROBLELM

# leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
  
# If the year is evenly divisible by 100, 
# then it is not a leap year 
# unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 
# Write a method that takes any year greater than 0 as input, 
# and returns true if the year is a leap year, 
# or false if it is not a leap year.

# input: integer (>0)
# output: boolean
# rules:
#   Explicit
  # - leap year 
  #   if divisible by 4
  #   && not divisble by 100
  #   Unless divisble by 400
  # - input > 0
  # - return true if leap year, else false


# EXAMPLES / TEST CASES
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# ALGORITHM
  #   if divisible by 4
  #   && not divisble by 100
  #   Unless divisble by 400

# CODE WITH INTENT

# my solution (15 minutes)
# the if / else approach shows the logic a bit more clearly
# def leap_year?(year)
#   return true if year % 400 == 0
#   return false if year % 100 == 0
#   return true if year % 4 == 0
#   false
# end  

# revised per solution
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end  
# end  

# a shorter solution
def leap_year?(year)
  #short circut the exception condition: year == 400
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end  

# Can you rewrite leap_year? to perform its tests in the opposite order of the above solution?
# Yes, but it is gross
# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 == 0
#         true
#       else
#         false
#       end
#     else
#       true
#     end
#   else
#     false  
#   end 
# end  

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(101) == false
p leap_year?(400) == true
p leap_year?(401) == false  

puts '***'
puts ' '

p leap_year?(2016) # == true
p leap_year?(2015) # == false
p leap_year?(2100) # == false
p leap_year?(2400) # == true
p leap_year?(240000) # == true
p leap_year?(240001) # == false
p leap_year?(2000) # == true
p leap_year?(1900) # == false
p leap_year?(1752) # == true
p leap_year?(1700) # == false
p leap_year?(1) # == false
p leap_year?(100) # == false
p leap_year?(101) # == false
p leap_year?(400) # == true
p leap_year?(401) # == false  