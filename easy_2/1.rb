
puts 'enter a name'
name = gets.chomp

name = 'Teddy' if name == ''

10.times do 
  # age = (2..200).to_a.sample
  age = rand(2..200)
  puts "#{name} is #{age} years old" 
end