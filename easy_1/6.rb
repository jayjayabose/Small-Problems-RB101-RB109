=begin
Write a method that takes one argument, 
  a string containing one or more words, 
  
returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.


#split to array of words
  #map
    #if word length greater than 5 reverse

=end

def reverse_words(str)
  str.split.map do |word|
    if word.length > 5 
      word.reverse
    else
      word
    end  
  end.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
