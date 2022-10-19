# PROBLEM
# Write a method that takes a year as input and 
# returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# input
#  - integer
# output 
#  - string
# rules
#   Explicit
#   - century_number + suffix
#   - centries comprised of years 01 - 00

# EXAMPLES
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# DATA STRUCTURES

# ALGORITHM
# determine century
#   (num - 1) / 100

# determine suffix
#   if 1: st
#   if 2: nd
#   if 3: rd 
# - for numbers greater than 20, % 10
#   1: st
#   2: nd
#   3: rd
#   else: th
 
    

def century(year)
  century = ((year - 1) / 100) + 1
  century.to_s + returnOrdinal(century)
end

def returnOrdinal(num)
  num %= 100 if num > 100

  if num < 4 
    case num
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    end
  elsif num > 20
    case num % 10
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    end
  else
    'th'
  end  
end  

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# p century(2000) == '20'
# p century(2001) == '21'
# p century(1965) == '20'
# p century(256) == '3'
# p century(5) == '1'
# p century(10103) == '102'
# p century(1052) == '11'
# p century(1127) == '12'
# p century(11201) == '113'

# p returnOrdinal(1)
# p returnOrdinal(2)
# p returnOrdinal(3)
# p returnOrdinal(4)
# p returnOrdinal(21)
# p returnOrdinal(22)