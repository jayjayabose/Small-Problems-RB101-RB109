=begin
PROBLEM

Write a method that takes a string argument and 
returns a new string that contains 
  the value of the original string with all consecutive duplicate characters collapsed into a single character. 
  
  You may not use String#squeeze or String#squeeze!.

input
- String

output
- String

rules
Explicit
- 

Implicit
- 

EXAMPLES / TEST CASES

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DATA STRUCTURES


ALGORITHM
Notes
- handle first character

Hight Level
iterate through each character in String
- if current character is different than the previous add it to outpug


Psuedo Code
input_chars = input_str.chars('')
return_chars = [input_chars[0]] #breaks if empty string is input
return_chars.each_with_object(return_chars) do |char, arr|
  #if different append
  #else return 
end
return.chars.join('')

=end

# CODE WITH INTENT

def crunch(input_str)
  input_chars = input_str.chars
  return_chars = input_chars.each_with_object([]) do |char, arr|
    if char != arr.last
      arr.append(char)
    else
      arr
    end
  end
  return_chars.join('')
end

#V2 inspired by provided solution
# def crunch(input_str)
#   output_str = ''
#   index = 0
  
#   while index < input_str.length
#     letter = input_str[index]
#     output_str << letter if output_str[-1] != letter
#     index += 1
#   end
#   output_str
# end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''