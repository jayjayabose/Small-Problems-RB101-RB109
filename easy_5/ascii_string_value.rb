=begin
PROBLEM
Write a method that determines and returns the ASCII string value of a 
string that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)


EXAMPLES
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

input:
- string
- may be empty

output
- number

rules
- outpot = sum of each charcter # ord

DATA STRCUCTURES
string -> array of characters
int output

ALGORITHN
set total = 0
loop over characters of the input string
- char_value = char.ord
- total += char_value

total

=end
#CODE WITH INTENT

#V1 ~10 minutes
# def ascii_value(str)
#   output = 0
#   str.chars.each do |char|
#     output += char.ord
#   end
#   output
# end

# def ascii_value(str)
  
#   str.chars.each_with_object(0) do |char, sum|
#     sum += char.ord
#   end
  
# end

# def ascii_value(str)  
#   str.chars.map { |char, sum| char.ord }.sum  
# end

def ascii_value(str)  
  #str.chars.inject(:+) 
  str.chars.inject(0) { |sum, char| sum + char.ord} 
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
