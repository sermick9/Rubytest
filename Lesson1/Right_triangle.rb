puts "indicate the length of side a in the triangle:"
side_a = gets.chomp.to_i

puts "indicate the length of side b in the triangle :"
side_b = gets.chomp.to_i

puts "indicate the length of side c in the triangle:"
side_c = gets.chomp.to_i

if side_c ** 2 == side_a ** 2 + side_b ** 2
    puts "triangle is rectangular"
elsif side_a == side_b && side_b == side_c && side_a == side_c
    puts "isosceles is triangle"
elsif side_a == side_b || side_b == side_c || side_a == side_c
    puts "equilateral triangle"
end
