=begin
PROBLEM
Write a method that 
  takes a string, and then 
  returns a hash that
     contains 3 entries: 
      one represents the number of characters in the string that are lowercase letters, 
      one the number of characters that are uppercase letters, 
      and one the number of characters that are neither.

input
  String

output
  Hash

rules - explicit
  Hash has three entries
  First Hash Entry: number of lowercase letters
  Second Hash Entry: number of uppercase letters
  Third: number of characters that are neither.

rules - implicit

rules - questions

restate the problem
count chars that are lower case, upper case, and nether in a string, and write to hash


EXAMPLES / TEST CASES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


DATA STRUCTURES


ALGORITHM

option 1:
iterate over chars, categorize, increment counts
create Hash

initialize hash to zeros
count upper characters
count lower characters
others = total - (upper + lower)
write hash

* pseudo code *

* formal pseudo code * 


=end

def letter_case_count (string)
  # lower_case_letters_string = ('a'..'z').to_a.join
  # upper_case_letters_string = ('A'..'Z').to_a.join
  # # lower_case_count = string.count lower_case_letters_string
  # upper_case_count = string.count upper_case_letters_string
  lower_case_count = string.count 'a-z'
  upper_case_count = string.count 'A-Z'
  not_letter_count = string.length - lower_case_count - upper_case_count

  { lowercase: lower_case_count, uppercase: upper_case_count, neither: not_letter_count }

end

# letter_case_count('')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }