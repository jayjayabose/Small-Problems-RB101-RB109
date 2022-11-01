=begin
PROBLEM

Write a method that 
  takes an Array, and 
  returns a new Array
    with the elements of the original list in reverse order.
  Do not modify the original list.

You may not use Array#reverse or Array#reverse!, 
nor may you use the method you wrote in the previous exercise.

input
  Array

output
  New Array. elements in reverse order

rules
Explicit
  Do not Mutate Array passed as Argument
  Return a new Array
    contains elements in Argument in reverse order
  Do not mutate elements


Implicit

Restate the problem
Create a new array containing elements of the passed in array in reverse order


EXAMPLES / TEST CASES
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

DATA STRUCTURES


ALGORITHM
* pseudo code *

Given an Array: array

Create new Array: output

v1
Loop throug elements of Array from last to first
  push element to output

v2
Loop throug elements of Array 
  add to front of outoput array: shift

return output

* formal pseudo code* 


=end
# My Solution V1
# def reverse(array)
#   array.each_with_object([]) do |element, output|
#     output.unshift element
#   end
# end

# My Solution V2
def reverse(array)
  array.inject([]) do |output, element|
    output.unshift element
  end
end

#p reverse([1,2,3,4]) #== [4,3,2,1]          # => true

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true