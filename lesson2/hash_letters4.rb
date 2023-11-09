hash = {}
('a'..'z').each_with_index do |letter, index|
  if 'aeiouy'.include?(letter)
    hash[letter] = index + 1
  end
end
# puts hash


hash.each do |letter, index|
  puts "#{letter} ==> #{index}"
end