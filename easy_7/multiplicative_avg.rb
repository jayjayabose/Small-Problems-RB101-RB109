=begin
PROBLEM

Write a method that takes an Array of integers as input, 
multiplies all the numbers together, 
divides the result by the number of entries in the Array, and then 
prints the result 
  rounded to 3 decimal places. 
  
Assume the array is non-empty.


input
  Array, of integers

output
  display Float, three decimal places

rules - explicit
  multiply elements in Array
  device by number of element in array

rules - implicit
  return value is irrelevant

rules - questions

issues
- dispaly to three places

EXAMPLES / TEST CASES
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

ALGORITHM
* pseudo code *

Given and Array of integers

multiply the integers in array
divide the product by array length
display

* formal pseudo code * 


=end

def show_multiplicative_average(array)
  output = array.inject(&:*) / array.length.to_f
  puts "The result is #{format("%.3f", output)}" 
end  




show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667