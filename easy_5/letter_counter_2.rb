=begin
PROBLEM
Modify the word_sizes method from the previous exercise to 
exclude non-letters when determining word size. 
For instance, the length of "it's" is 3, not 4.

//
Write a method that takes a string with one or more space separated words and 
returns a hash that 
shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.


input
- string: sentence
 -- words sepearated by spaces

 output
- hash: { size (int) => count (int)}

rules
Explicit
- empty string # ==> empty hash
- hash key = word size
- hash value = word count
- any non space character is part of word
- tmpe

Implicit
- 

EXAMPLES / TEST CASES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

DATA STRUCTURES

{word_length => count}


ALGORITHM

string sentence -> array of whards: split
iterate over words of array
- word_length
- if output hash has a key == word_lenghth
   then: word_length, increment count
   else: add new key / value: word_length => 1
return output hash
=end

def remove_non_letters(string)
  string.gsub(/[^a-zA-Z ]/,'')
  #[^a-zA-Z ]
end  

def word_sizes(sentance)
  sentance = remove_non_letters(sentance)
  words = sentance.split(' ')
  words.each_with_object(Hash.new(0)) do |word, output|
    output[word.length] += 1 # this works because we created hash with 0 as return value for non existing keys
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}