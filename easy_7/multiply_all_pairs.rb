=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)

Write a method that 
takes two Array arguments in which 
  each Array contains a list of numbers, and 
returns a new Array 
  that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
  The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

input *: Array, Array

output *: New Array

rules - explicit *
  input: each Array contains a list of numbers
  input: niether Array is emppty
  output: contains the product of every pair possible
  output: sorted ascencding

rules - implicit (?)

rules - questions (?)

restate the problem (?)


EXAMPLES / TEST CASES
(work an example if the Algo is complex)

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

DATA STRUCTURES (?)


ALGORITHM
(work on a sub problem if needed, beware of fuzziness, if needed: (i) work on a sub problem; (ii) simplify via small concrete examples; (III) walk a test case through the algo)
approach;
  find all pairs + multiply + save to output
    loop over array 1
      loop over array 2
        multipley array 1 element and array 2 element
        save to output
  
  sort and return output

pseudo code *
Given array_1 and array_2 # [1, 2] [3, 4, 5]

1. initialize an output array

2. Loop through eacch element in array_1 #  [1, 2]  (each )
3.   Loop eacch element in array_2  # [3, 4, 5]
      find product
      push to outping

4 sort output, 
5 return output

formal pseudo code (?)
(if the pseudo code has gotten complex)

REFACTOR
e.g. e.g. remove unnecessary variable initialization
=end

# def multiply_all_pairs(array_1, array_2)
#   products = []

#   array_1.each do |array_1_element|
#     array_2.each do |array_2_element|
#       products << array_1_element * array_2_element
#     end
#   end 
#   products.sort
# end  

def multiply_all_pairs(array_1, array_2)
  combinations = array_1.product array_2
  products = combinations.map  { |a, b| a * b }   
  products.sort
end  

 # multiply_all_pairs([2, 4], [4, 3, 1, 2])

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]