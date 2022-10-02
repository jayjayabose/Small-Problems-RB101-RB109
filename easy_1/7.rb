=begin
Write a method 
takes one argument, a positive integer,
returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

=end

=begin my original solution
def stringy(num) 
  output = ''
  num.times {|i| output += i % 2 == 0 ? '1' : '0'}  
  return output
end  
=end

def stringy(num, start_value = 1)
  a, b  = 1, 0 
  a, b = 0, 1 if start_value == 0  
  numbers = []
  num.times  {|x| x.even? ? numbers << a : numbers << b}
  numbers.join
end  

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(7,0) == '1010101'
