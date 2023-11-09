puts "Enter coefficient a: "
coefficient_a = gets.chomp.to_f

puts "Enter coefficient b: "
coefficient_b = gets.chomp.to_f

puts "Enter coefficient c: "
coefficient_c = gets.chomp.to_f

discriminant =  coefficient_b**2 - 4 * coefficient_a * coefficient_c

if discriminant > 0
  x_1 = (-coefficient_b + Math.sqrt(discriminant))/ 2 * coefficient_a 
  x_2 = (-coefficient_b - Math.sqrt(discriminant))/ 2 * coefficient_a 
  puts "discriminant equals #{discriminant}"
  puts "roots of the equation #{x_1} and #{x_2}"
elsif discriminant == 0 
  x_1 = (-coefficient_b + Math.sqrt(discriminant))/ 2 * coefficient_a 
  puts "discriminant equals #{discriminant}"
  puts "root of the equation #{x_1}"
else
  puts "discriminant equals #{discriminant}"
  puts "no roots"
end
