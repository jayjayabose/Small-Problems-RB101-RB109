
# PROBLEM

# Write a method that takes an Array of numbers, and 
# returns an Array 
# with the same number of elements, and 
# each element has the running total from the original Array.

# input: Array
# output: Array
# rules:
#   Explicit
#   - output has n elements; n = input length
#   - each element represents running total
#   - input is integers
#   - empty array -> empty array

#   Implicit  
#   - output new array

# EXAMPLES / TEST CASES
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# DATA STRUCTURES
# - array input
# - array output

# ALGOTRITHNM
# handle empty case. if we pop we'll get a nill


# set 


# - loop over input array
#   - sum element and last element of output Array  #nil will cause an error // each will not execute the block for empty array
#   - push sum to output

# return output  

# CODE WITH INTENT

#1: V1 20 minutes
# def running_total(numbers)
#   return numbers if numbers.length == 0
#   output = []
#   output[0] = numbers.shift

#   numbers.each do |number|
#     output.push (output.last + number)
#   end
#   output
# end

def running_total(arr)
  result = []
  total = 0
  arr.each do |x|
    total = total + x
    result << total
  end
  result 
end

#2: Solution: that was stupid easy. 2 minutes. Lesson -- look for idiomatic solutions that will be faster before coding.
def running_total(numbers)
  sum = 0
  numbers.map do |number|
    sum += number
  end
end

#3. Further exploration. Did not complete
# def running_total(numbers)
#   output = 0
#   numbers.inject do |sum, n|
#     puts output += sum
#     n
#   end
# end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []