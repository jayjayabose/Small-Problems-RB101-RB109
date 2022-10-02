=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

#convert to string
#split
#convert to integer
#return sum

123_456_789.to_s.split('').map!{ |x| x.to_i }.sum
123_456_789.to_s.split('').map{ |x| x.to_i }.sum


[1,2,3,4,5].reduce(:+)
[1,2,3,4,5].reduce { |sum, number| sum + number }

=end



#def sum(num) num.to_s.split('').map{ |x| x.to_i }.sum end
def sum(num) num.to_s.chars.map(& :to_i).reduce(:+) end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45