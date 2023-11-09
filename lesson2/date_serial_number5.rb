puts "Enter date: "
date = gets.chomp.to_i
date = date -1

puts "Enter month: "
month = gets.chomp.to_i
month = month - 1

puts "Enter year: "
year = gets.chomp.to_i

examination_year = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)

if examination_year == true
  loop_year = 29
  #puts "year loop" 
else
  loop_year = 28 
end

days_in_month = [31, loop_year, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31,]


if month + 1 < 1 || month + 1 > 12 || date < 1 || date > days_in_month[month]
  puts "The date entered is incorrect"
else
end

serial_number = date
(1..month).each { |m| serial_number += days_in_month[m - 1] }
puts "Date serial number: #{serial_number}"