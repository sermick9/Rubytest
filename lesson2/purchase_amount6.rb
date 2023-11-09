shopping_basket = {}
total_price = 0.0

loop do
  puts "If you want to close the program, write 'stop' "
  stop = gets.chomp.to_s
  break if stop == 'stop'

  puts "Enter the product name: "
  product_name = gets.chomp.to_s 

  puts "Enter the unit price: "
  unit_price = gets.chomp.to_f

  puts "Enter the quantity of goods purchased: "
  quantity_purchased = gets.chomp.to_f

  total_cost = unit_price * quantity_purchased

  shopping_basket[product_name] = {
    unit_price: unit_price,
    quantity_purchased: quantity_purchased,
    total_cost: total_cost,
  }
  
  total_price += total_cost
  
  puts "Final price of the product #{product_name}: #{total_cost} $"
end

puts "Total cost of all purchases #{total_price} $"
