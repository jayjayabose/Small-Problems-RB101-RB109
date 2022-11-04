=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)

Write a method that 
takes an Array
   of numbers and then 
returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

input *: Array (of numbers)

output *: Number (intgers)

rules - explicit *
  input: always contains at least one number.  
  output: sum of the sums of each leading subsequence for that Array. 
    leading sequence: range where beginning element is first element of array
      there will be n (length) leading sequences

rules - implicit (?)

rules - questions (?)

restate the problem (?)
return the sum of all leading sequences

EXAMPLES / TEST CASES
(work an example if the Algo is complex)
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


DATA STRUCTURES (?)
Array

Inteer

ALGORITHM
(work on a sub problem if needed, beware of fuzziness, if needed: (i) work on a sub problem; (ii) simplify via small concrete examples; (III) walk a test case through the algo)
pseudo code *

approach
[3, 5, 2]
1. create a collection of all leading sequences : # (3) + (3 + 5) + (3 + 5 + 2)
2. iterate through collecton
  sum each sequence
  add to a total
3. return total

pseudo code
Given Array of numbers

initialize sum to zero

3  # 0,1
3, 5 #0, 2
3, 5, 2 #0, 3   until second number == array.length

return 
sum element block return
0   3       3
3   5       8
8   2       10

1. # create a collection of all leading sequences 
set index = 0
while index less than array length
  get a leading sequence; 0 .. n
  sum leading sequence
  add to sum
  increment index

return sum

formal pseudo code (?)
(if the pseudo code has gotten complex)

REFACTOR
e.g. e.g. remove unnecessary variable initialization
=end

def sum_of_sums(array)
  sum = 0
  index = 0  
  while index < array.length
    sum += leading_sequence = array[0..index].sum
    index += 1
  end
  sum
end

# sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35