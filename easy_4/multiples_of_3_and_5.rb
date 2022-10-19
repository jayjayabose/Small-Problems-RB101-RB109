# PROBLELM

# Write a method that searches for all multiples of 3 or 5 
# that lie between 1 and some other number, 
# then computes the sum of those multiples. 

# You may assume that the number passed in is an integer greater than 1.

# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# rules
# input: integer: num
# output: integer: sum
#   Explicit
#   - input is integer
#   - input > 1
#   - sum = sum of all multiples of 3 or 5 between 1 and num (inclusive)

# questions
#  -

# EXAMPLES / TEST CASES

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# DATA STRUCTURES
# integer: output
# array:  to hold range

# ALGORITHM

# high level
# range 1 .. num
# output = 0
# iterate through range
#   - determe element is multiple of 3
#   - determe element is multiple of 5
#   - if yes to either, incmrent sum by element
# output

# multiple
# num % 3 == 0 



# CODE WITH INTENTION

# 1. first solution; 15 minutes
# def multisum(num)
#   output = 0
#   (0..num).to_a.each do |element|
#     if element % 3 == 0 || element % 5 == 0
#       output += element
#     end  
#   end
#   output
# end

# 2. refactored for fun. probalby not preferred due density
# def multisum(num)
#   (0..num).to_a.each.select { |element| element % 3 == 0 || element % 5 == 0 }.sum
# end

# 3. given soltuion. helper method for extra clarity
# def multiple?(number, divisor)
#   number % divisor == 0  
# end  

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     sum += number if multiple?(number, 3) || multiple?(number, 5)
#   end
#   sum
# end

# 4. further exploration
def multisum(num)
  (0..num).to_a.each.select { |element| element % 3 == 0 || element % 5 == 0 }.inject(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168