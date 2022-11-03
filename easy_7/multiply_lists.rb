=begin
PROBLEM

Write a method that 
takes two Array arguments in which 
  each Array contains a list of numbers, and 
returns a new Array that 
  contains the product of each pair of numbers from the arguments that have the same index. 

  You may assume that the arguments contain the same number of elements.

input
  Array 1
  Array 2

output
  Array 3 (new array)

rules - explicit
  element n, in array 3 = array 1[n] * array 2[m]
  array 1 and 2 are same length

rules - implicit

rules - questions

restate the problem
multiply corresponsind elements in each array, return the products in a new array


EXAMPLES / TEST CASES
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

DATA STRUCTURES

[[a, b], [a,b]]


ALGORITHM
* pseudo code *

convert to two dimensional array
iterate over each sub array in two-dimensional rray
  return product of the two elements

* formal pseudo code * 


=end
def multiply_list(arr_1, arr_2)
  arr_1.zip(arr_2).map do |sub_arr|
    sub_arr.inject(&:*)
  end 
end  

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]