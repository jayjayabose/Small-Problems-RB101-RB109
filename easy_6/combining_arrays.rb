=begin
PROBLEM
Write a method that 
takes two Arrays as arguments, and 
returns an Array that 
  contains all of the values from the argument Arrays. There should be 
  no duplication of values in the returned Array, 
    even if there are duplicates in the original Arrays.



input
  two Array objects

output
  new Array object
  
rules - explicit
  output contains all values of two argument Arrays
  output contains no duplicate values (even if dups in argument arrays)

rules - implicit

restate the problem
  Combine the elements of two arrays into a single array of unique values

EXAMPLES / TEST CASES
  merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

DATA STRUCTURES


ALGORITHM
* pseudo code *
Given: Array one, Array two

create a new Array
assign it result of appeending arrays
remove duplicates


* formal pseudo code * 


=end
def merge(arr_1, arr_2)
  #(arr_1 + arr_2).uniq! # my solution
  arr_1 | arr_2          # provided solution
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]