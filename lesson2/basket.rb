basket = {}
sum = 0

loop do 
	print "Название: "
	name = gets.chomp
	break if name == "стоп"

	print "Цена: "
	price = gets.chomp.to_f
	print "Количество: "
	count = gets.chomp.to_f

	inhash = {}
	inhash[:price] = price
	inhash[:count] = count	
	basket[name] = inhash
end

puts basket
basket.each do |n, inh|
	res = inh[:price] * inh[:count]
	sum += res
	puts "#{n}: #{res} "	
end
puts "Итого: #{sum}"




