=begin
PROBLEM
Modify the method from the previous exercise so it 
  ignores non-alphabetic characters 
  when determining whether it should uppercase or lowercase each letter. 
The non-alphabetic characters should still be included in the return value; t
  hey just don't count when toggling the desired case.

-  -


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
  every other letter character is capitalized

rules - implicit

rules - questions

restate the problem
return a new string where every other letter characters alternates upper case / lower case


EXAMPLES / TEST CASES
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

DATA STRUCTURES


ALGORITHM
* pseudo code *
Given a String

initialize upper_flag to true
Iterate through characters in String [map]
    if chacter is a letter
      change case, based on upper flag
      swap upper flag
    return char

join and return array
* formal pseudo code * 


=end
def staggered_case(string)
  toggle = true
  output_array = string.chars.map do |char|    
    if char =~ /[A-Za-z]/
      toggle ? char.upcase! : char.downcase!
      toggle = !t oggle
    end
    char
  end
  output_array.join
end



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
