=begin
PROBLEM
Write a method that takes an Array as an argument, and 
reverses its elements in place; 
  that is, mutate the Array passed into this method. The 
return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Note: for the test case list = ['abc'], 
  we want to reverse the elements in the array. 
  The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

input
  Array

output
  Array - same Object
    order of elements is reversed

rules
Explicit
- reverse order of elements
- mutate the Array
- return the same array value
- do not mutate elements

Implicit

Restate the problem
mutate the given array, such that the order of elements is reversed, then return the same Array Object


EXAMPLES / TEST CASES
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true


DATA STRUCTURES


ALGORITHM
pseudo code
Given and Array Object: array

iterate through collection (array) one by one
  pop from Array and push to tmp array

iterate through collection (tmp_array) one by one
  push element to Array

Return array

formal pseudo code

Given and Array object: array

SET tmp_array

WHILE array.length > 0
  tmp_array.push array.pop

WHILE tmp_array.lengh > 0
  array.push tmp_array.shift

array
=end

#My Solution
def reverse!(array)
  tmp_array = []

  while array.length > 0
    tmp_array.push array.pop
  end

  while tmp_array.length > 0
    array.push tmp_array.shift
  end

  array
end

#Provided Solution
# def reverse!(array)
#   right_index = -1
#   left_index = 0

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

 list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

 list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

 list = []
p reverse!(list) == [] # true
p list == [] # true