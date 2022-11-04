=begin
PROBLEM:
Write a method that 
  takes two arguments: 
    the first is the starting number, and 
    the second is the ending number. 
  Print out all numbers from the starting number to the ending number, 
    except if a number is divisible by 3, print "Fizz", 
    if a number is divisible by 5, print "Buzz", and finally 
    if a number is divisible by 3 and 5, print "FizzBuzz".

input *: number (start), number (end)

output *: display

rules - explicit
  print all numbers from start to end, inclusive
  ', ' separated
  if number divisible by 3: Fizz
  if number divisible by 5: Buzz
  if number divisible by 3 and 5: FizzBuzz


rules - implicit (?)
  don't care about return value
  no trailing ','    
  

rules - questions (?)
    inclusive? YES
    assume Integer, not Float YES
    zero? YES
    negative numbers YES

restate the problem (?)
given an start and end number, output an inclusive sequence of comma separated numbers, with required replacemsnts

EXAMPLES / TEST CASES:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

DATA STRUCTURES: (?)
Integer, Integer

String

ALGORITHM:
approach
option 1: 
    create collection of numbers
    iterate through numbers (transformation)
      check divisibility and replace per rules
    convert to string and display

pseudo code

Given start, end (Integer)

Initialize an Array of integers from start to end (inclusive)
Rassign Array to transformed array 
      set boolean: divisible_by_5
      set boolean: divisible_by_3
      if divisible by 3 and 5, then 'FizzBuzz'
      elsif divisible by 3  then 'Fizz'  # quotient, remainder = n.divmod 3 // if remainder == 0
      elsif divisible by 5 then 'Buzz'
      else, return the number   # now the array will be strings and numbers
output comma separated array

=end

def fizzbuzz(start_number, end_number)
  result = (start_number..end_number).to_a.map do |number|
    divisible_by_3 = number % 3 == 0
    divisible_by_5 = number % 5 == 0

    if divisible_by_3 && divisible_by_5
      'FizzBuzz'
    elsif divisible_by_3
      'Fizz'
    elsif divisible_by_5
      'Buzz'
    else
      number
    end

    case
    when divisible_by_3 && divisible_by_5 then 'FizzBuzz'
    when divisible_by_3 then 'Fizz'
    when divisible_by_5 then 'Buzz'
    else number
    end
  end
  p result.join(', ')
end  



fizzbuzz(-15, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
