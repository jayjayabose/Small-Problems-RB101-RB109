=begin
PROBLEM:
Write a method that 
  takes a string, and 
  returns a new string in which 
    every consonant character is doubled. 
    Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

- input *: String

- output *: String (new object)

- rules - explicit *
  every consonant character is doubled. 
  non consontnats are not doubled
    (Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.)
  empty string -> empty string

- rules - implicit (?)

- rules - questions (?)

- restate the problem (?)


EXAMPLES / TEST CASES:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

DATA STRUCTURES: (?)
String

New String

ALGORITHM:
- approach
iterate over string
  buildn and output string
    appench char to output
    if char not vowel appench char to output

- pseudo code
Given String input
Initialize String output to ''

iterate over char in ipnput
      append each char to output
      append each qualifying char to output (a second time)


qualifying chars
option 1: a-z minus vowels and spaces + punctuation   # problem: what is the set of punctioation
option 2: create a set of consontants (a-z, remmove vowels) and use include? handle case
option 3: regex of consonants
=end

def double_consonants(input)
  # This was a giant wase of time.
  # alphabet = ('a'..'z').to_a
  # vowels = %w(a e i o u)
  # consonants = []
  # alphabet.each do |letter|
  #   consonants << letter unless vowels.include? letter
  # end 

  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

  output = ''
  input.chars.each do |char|
    output << char
    output << char if consonants.include? char.downcase
  end  
  output
end  


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""