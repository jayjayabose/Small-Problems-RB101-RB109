# PROBLEM

# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

# EXAMPLES

# exponent(5, 0) == 1
# exponent(5, 1) == 5
# exponent(5, 2) == 25
# exponent(5, 3) == 125

# ALGORITHM

#  multiply n * n, exp times

def exponent(num, exp)
  return 1 if exp == 0
  output = 1
  exp.times { |n| output = multiply(output, num) }
  output
end


def square(num)
  multiply(num, num)
end

def multiply (num_a, num_b)
  num_a * num_b
end

# p multiply(5, 3) == 15
# p multiply('hi', 2)
# p multiply(['a', 'b'], 10)

p exponent(5, 0) == 1
p exponent(5, 1) == 5
p exponent(5, 2) == 25
p exponent(5, 3) == 125
