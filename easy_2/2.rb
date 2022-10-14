puts 'enter length in meters'
length = gets.chomp.to_f

puts 'enter width in meters'
width = gets.chomp.to_f

area_meters = (length * width).round(2)
area_feet = (area_meters * 3.28084).round(2)

puts "the area is #{area_meters} square meters (#{area_feet} square feet)."