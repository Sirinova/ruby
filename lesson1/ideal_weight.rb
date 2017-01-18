print "Введите Ваше имя: "
user_name = gets.chomp.capitalize!

print "Ваш рост: "
growth = gets.chomp.to_i

ideal_weight = growth - 110

if ideal_weight < 0 
	puts "#{user_name}, Ваш вес уже оптимальный!"
else
	puts "#{user_name}, Ваш идеальный вес: #{ideal_weight}"
end
