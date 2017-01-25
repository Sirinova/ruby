year = 0
month = 0
day = 0

loop do
	print "Год: "
	year = gets.chomp.to_i
	break if year > 0
end

d = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if (year%4 == 0 && year%100 != 0) || year%400 == 0
	d[1] = 29
end

loop do
	print "Месяц: "
	month = gets.chomp.to_i
	break if month >= 1 && month <= 12
end

loop do
	print "Число: "
	day = gets.chomp.to_i
	break if day >= 1 && day <= d[month-1]
end

	num = 0
	for i in 0..month-2
		num += d[i] 
	end
	puts num + day

 


