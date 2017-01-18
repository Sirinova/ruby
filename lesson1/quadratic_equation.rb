print "Введите число: "
a = gets.chomp.to_f

print "Введите число: "
b = gets.chomp.to_f

print "Введите число: "
c = gets.chomp.to_f

dis = b**2 - 4*a*c

if dis < 0 
	puts "Дискриминант = #{dis}, корней нет"
else
	e = Math.sqrt(dis)
	x1 = (-b + e) / (2 * a)
	x2 = (-b - e) / (2 * a)
	if dis > 0
		puts "Дискриминант = #{dis}, корень уравнения 1 = #{x1}, корень уравнения 2 = #{x2}"
	else 
		puts "Дискриминант = #{dis}, корень уравнения = #{x1}"
	end
end