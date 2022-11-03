=begin
PROBLEM
Write a method that takes a String as an argument, and 
returns a new String that contains the original value 
  using a staggered capitalization scheme in which e
    very other character is capitalized, and the 
    remaining characters are lowercase. 
    Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.


input
  Sting

output
  New String

rules - explicit
  Contains original values, but
  every other char is capitalized
  remainders are lowercase
  non letters are unchanged

rules - implicit

rules - questions

restate the problem
return a new string where charactera at odd index are upper, characters at even index are lower



EXAMPLES / TEST CASES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


DATA STRUCTURES


ALGORITHM
* pseudo code *
Given a String

initialez output array
Iterate through characters in String: each_with index
  if index is odd, upper
  else lower

return string

* formal pseudo code * 


=end
# def staggered_case(string)
#   output_array = []
#   output_array = string.chars.each_with_index do |char, index|
#     if index.even?
#       char.upcase!
#     else
#       char.downcase!
#     end
#     char
#   end
#   output_array.join
# end

def staggered_case(string)
  output_array = string.chars.map.with_index do |char, index|
    if index.even?
      char.upcase!
    else
      char.downcase!
    end
    char
  end
  output_array.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'