=begin
PROBLEM
Write a method that takes an Array as an argument, and 
returns two Arrays (as a pair of nested Arrays) that contain 
  the first half and 
  second half of the original Array, respectively. 

  If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

input
  Array

output
  New Array
    Eontaining two Array Objects: first half, second half

rules - explicit
  create two new arrays
  array_1 contains first half of elements
  array_2 contains second half of elements
  if odd number of elements, middle is in array_1

rules - implicit
  do not mutate argment array

restate the problem
Divide elements of an array into two new arrays, return those as elements of a return Array


EXAMPLES / TEST CASES
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # 0
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


DATA STRUCTURES


ALGORITHM
* pseudo code *
Given: Array

1. split array into two arrays
2. push those arrays to output Array
3. return output array

* formal pseudo code * 

1. split array into two arrays
partition {|element| ... } → [true_array, false_array]

second_end = array.length - 1
second_begin = (array.length / 2.0).ceil
first_end = second_begin - 1
first_begin = 0


even length
[1, 2, 3 ,4] l: 4 => (0..1), (2..3) // l/2 = 2
[1, 2, 3 ,4, 5, 6 ]l: 6 => (0..2), (3..5) // l/2 = 3

odd length
l: 5 => (0..2), (3..4) // l/2 = 2
l: 7 => (0..3), (4..6) // l/2 = 3


# begin_index = 0
# end_index = 0
mid
=end

#my solution
# def halvsies(array)
#   second_end = array.length - 1
#   second_begin = (array.length / 2.0).ceil
#   first_end = second_begin - 1
#   first_begin = 0
#   p "#{first_begin}, #{first_end}, #{second_begin}, #{second_end}"
#   [ array[(first_begin..first_end)], array[(second_begin..second_end)] ]
# end

#provided solution
def halvsies(array)
  middle = (array.length / 2.0).ceil
  first = array.slice(0, middle)
  second = array.slice(middle, array.length - middle)
  [first, second]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # 0
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]