puts "Calculating the area of ​​a triangle"

puts "Please indicate the base of the triangle"
base = gets.chomp.to_i
puts "Please indicate the height of the triangle"
height = gets.chomp.to_i

area_triangle  = 1.0 / 2 * base * height

puts "the area of ​​the triangle is #{area_triangle.to_i} centimeters"