=begin
PROBLEM
Write a method named include? that 
takes an Array 
and a search value as arguments. This method should 

return true if the search value is in the array,
false if it is not. 

You may not use the Array#include? method in your solution.

input
  Array
  Search value

output
  Boolean

rules - explicit
  return tue if search value is in Array, else FalseClass

rules - implicit

rules - questions

restate the problem



EXAMPLES / TEST CASES
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false


DATA STRUCTURES


ALGORITHM
* pseudo code *
given array
given search_term

if search tearm is not in array, return False
else return true

* formal pseudo code * 


=end

# My solution
# def include?(array, search_term)
#   return false if array.count(search_term ) == 0
#   true
# end

#Given solutin. Better
def include?(array, search_term)
  !!array.find_index(search_term)
end  

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false