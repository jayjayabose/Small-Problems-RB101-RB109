=begin
PROBLEM
Write a method that will take a short line of text, and print it within a box.


input
- wtring
output
- print output

rules
Explicit
- pad with space on left and right
- pad with line on top and bottom
- with determined by input: input.length + 2

Implicit
- one line of text, no line breaks

EXAMPLES / TEST CASES
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+


print_in_box('')
+--+
|  |
|  |
|  |
+--+


DATA STRUCTURES


ALGORITHM
get lenght of String
generate border line
 - generateLIne('+-', width, '-+')
generate padding line
generate text line
border line
'+-'' + [n * '-'] + '-+'

output;
border line
padding ine
text line
padding ine
border line

=end

# def generate_line(left, n, right, filler)
#   middle = ''
#   n.times {middle << filler}
#   left + middle + right
# end

# def print_in_box(str)
#   width = str.length
#   border_line = generate_line('+-', width, '-+', '-')
#   padding_line = generate_line('| ', width, ' |', ' ')
#   text_line = "| #{str} |"

#   p border_line
#   p padding_line
#   p text_line
#   p padding_line
#   p border_line
# end

#V2 following proviced example
def print_in_box(str)
  width = str.length
  border_line = "+-#{'-' * width}-+"
  padding_line = "| #{' ' * width} |"
  text_line = "| #{str} |" 


  p border_line
  p padding_line
  p text_line
  p padding_line
  p border_line

end




# p generate_line('+-', 10, '-+', '-')
# p generate_line('| ', 10, ' |', ' ')
# p generate_line('+-', 10, '-+', '-')

print_in_box('To boldly go where no one has gone before.')
print_in_box('')