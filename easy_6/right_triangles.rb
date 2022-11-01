=begin
PROBLEM
Write a method that 
takes a positive integer, n, as an argument, and
 displays a right triangle whose sides each have n stars. 
 
 The hypotenuse of the triangle 
  (the diagonal side in the images below) 
  should have one end at the lower-left of the triangle, and 
  the other end at the upper-right.

input
  postive Integer

output
  displays triangle

rules - explicit
  n is positive integer
  number of lines = n 
  each line has n characters
  line 1: n-1 space characters + *
  line n: n * characters

rules - implicit

rules - questions
  ' ' is the other character?

restate the problem
print n lines using ' ' and '*' such that a right triangle is formed


EXAMPLES / TEST CASES

triangle(5)

    *
   **
  ***
 ****
*****

DATA STRUCTURES


ALGORITHM
* pseudo code *
Given: Integer n

i = 1
iterate n times
  line = n-i * space + * * i
  print line
  i ++

line 1: n-1 X ' ' + *
line 2: n-2 X ' ' + **

---


create a string of n space characters
SET line = ' ' * n

iterate n times
1.upto(n).{|x|}

replace sting[-n] with *
  string[-n] = '*'

print



* formal pseudo code * 


=end
# CODE WITH INTENT

#my solution
# def triangle(n)
#   line =  ' ' * n

#   1.upto(n) do |x|
#     line[-x] = '*'
#     puts line
#   end
# end

#given solution
def triangle(n)
  num_stars = 1
  num_spaces = n - 1
  n.times do |_|
    puts "#{' ' * num_spaces}#{'*' * num_stars}"
    num_stars += 1
    num_spaces -= 1
  end
end

triangle 5
triangle 9
triangle 15
