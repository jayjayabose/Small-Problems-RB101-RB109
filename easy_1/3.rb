=begin
Write a method that takes one argument
  , a positive integer,   
  returns a list of the digits in the number.


  #convert to string
  #split
  #convert array eleements to integer

=end

def digit_list num
  #num.to_s.split("").map{|x| x.to_i} # my solution
  num.to_s.chars.map(&:to_i)
end  


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true