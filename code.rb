prices = {}
quantities = {}

while true
  print "what is the name of your item?\n>"
  name = gets.chomp

  if prices[name].nil?
    print "What is the value of your item?\n>"
    prices[name] = gets.chomp.to_f
  end

  print "How many would you like to add?\n>"
  if quantities[name].nil?
    quantities[name] = 0
  end
  quantities[name] += gets.chomp.to_i

 print "Any more items? (Y/n)\n>"
   continue = gets.chomp
  if continue.downcase == 'n'
    break
  end
end

total = 0
prices.each do |name, price|
subtotal = quantities[name] * price
  puts "#{quantities[name]} #{name}(s): #{subtotal}"
  total = total + subtotal
end

puts "Your total is #{total}"
