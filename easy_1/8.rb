=begin
Write a method 
one argument, an array containing integers, 
returns the average of all numbers in the array. Your result should also be an integer.
 The array will never be empty and the numbers will always be positive integers. 

#sum array
#divide by length
#return an integer

[1, 5, 87, 45, 8, 8].sum / [1, 5, 87, 45, 8, 8].length.to_f

=end 

def average(numbers)
  numbers.sum/numbers.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40