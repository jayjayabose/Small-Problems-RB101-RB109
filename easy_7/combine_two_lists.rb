=begin
PROBLEM

Write a method that combines 
two Arrays passed in as arguments, and 
returns a new Array 
  that contains all elements from both Array arguments, 
  with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

input
  two Arrays
output
  one new ARray

rules - explicit
  output contains all elements from both input arrays
  elements in output are alternated: arr1, arr2 ..
  input arrays are not emppty
  input arrays are equal length

rules - implicit

rules - questions

restate the problem
create a new array, by selecting alternating elements of two arrays


EXAMPLES / TEST CASES
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

DATA STRUCTURES


ALGORITHM
* pseudo code *
Given array_1, array 2

iterate over elements in array_1: each with index
  add to output array: element from array 1
  add to output array: element from array 2

return outout

* formal pseudo code * 


=end

#my solution
# def interleave(array_1, array_2)
#   output = []
#   array_1.each_with_index do |element, index|
#     output.push element
#     output.push array_2[index]
#   end
#   output
# end

#further exploration
def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
