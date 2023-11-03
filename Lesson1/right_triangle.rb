puts "indicate the length of side a in the triangle:"
side_a = gets.chomp.to_i

puts "indicate the length of side b in the triangle:"
side_b = gets.chomp.to_i

puts "indicate the length of side c in the triangle:"
side_c = gets.chomp.to_i

sides_list = [side_a, side_b, side_c]
max_side = sides_list.max

sides_list.delete(max_side)

side_one, side_two = sides_list

if max_side ** 2 == side_one ** 2 + side_two ** 2
  puts "triangle is rectangular"
elsif side_a == side_b && side_b == side_c
  puts "isosceles is triangle"
elsif side_a == side_b || side_b == side_c || side_a == side_c
  puts "equilateral triangle"
else
  puts "no triangle"
end
