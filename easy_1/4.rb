=begin
Write a method that counts the number of occurrences of each element in a given array.

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

car => 4
truck => 3
SUV => 1
motorcycle => 2


#loop through array
  #insert element to hash, with value 1 if not present
  # increment value if present

#print output
=end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(arr)
  counter = Hash.new(false) 
  arr.each do |element|
     counter[element.downcase] == false ? counter[element.downcase] = 1 : counter[element.downcase] += 1    
  end
  
  counter.each do |key, value|
    puts "#{key} => #{value}"
  end    
end  

count_occurrences(vehicles)
