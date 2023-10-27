puts "Enter coefficient a: "
coefficient_a = gets.chomp.to_f

puts "Enter coefficient b: "
coefficient_b = gets.chomp.to_f

puts "Enter coefficient c: "
coefficient_c = gets.chomp.to_f

discriminant_calculation =  coefficient_b**2 - 4 * coefficient_a * coefficient_c

if discriminant_calculation  > 0
    x_1 = (-coefficient_b + Math.sqrt(discriminant_calculation))/ 2 * coefficient_a 
    x_2 = (-coefficient_b - Math.sqrt(discriminant_calculation))/ 2 * coefficient_a 
    puts "discriminant equals #{discriminant_calculation}"
    puts "roots of the equation #{x_1} and #{x_2}"
elsif discriminant_calculation == 0 
    x_1 = (-coefficient_b + Math.sqrt(discriminant_calculation))/ 2 * coefficient_a 
    puts "discriminant equals #{discriminant_calculation}"
    puts "root of the equation #{x_1}"
else discriminant_calculation < 0 
    puts "discriminant equals #{discriminant_calculation}"
    puts "no roots"
end