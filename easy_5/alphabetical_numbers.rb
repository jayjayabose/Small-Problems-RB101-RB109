=begin
PROBLEM
Write a method that 
takes an Array of Integers between 0 and 19, and 
returns an Array of those Integers 
sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

input
- array of integers

output
- - array of integers

rules
Explicit
- all integers 0..19
- output sorted by english word order

Implicit
- 

EXAMPLES / TEST CASES

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


DATA STRUCTURES
array of input integers


array of output integers

ALGORITHM

create int_word hash

1. convert ints to words: map
  iterate over input (array of integers)
  look up word
2. sort words: array.sort
3. convert words to ints  : map
  iterate over array of words
  convert word to inteber

V2

1. crate lookup array: ['zero', `one` ...]
2. array_ints.sort_by
    lookup.index(a) <=> lookup.index(b)
=end
require 'pry'

INT_WORDS_ARR = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)



# def alphabetic_number_sort(array_ints)
#   array_ints.sort do |a_int, b_int|   
#     a_int_word = INT_WORDS_ARR[a_int]
#     b_int_word = INT_WORDS_ARR[b_int]
#     p a_int_word <=> b_int_word
#     a_int_word <=> b_int_word
#   end
# end

#V2
def alphabetic_number_sort(array_ints)
  array_ints.sort_by do |int|   
    INT_WORDS_ARR[int]
  end
end
 p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]

