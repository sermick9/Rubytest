puts "Hello, please indicate your name and height, then we will calculate your ideal weight using the formula"

puts "Indicate your name: "
name = gets.chomp

puts "Indicate your height: "
height = gets.chomp.to_i

weight = (height - 110) * 1.15

if weight <= 0
  puts "#{name}Your weight is already optimal"
else
  puts "#{name} Your weight #{weight}"
end
