print "Введите значение длинны стороны треугольника: "
side_a = gets.chomp.to_f

print "Введите значение длинны стороны треугольника: "
side_b = gets.chomp.to_f

print "Введите значение длинны стороны треугольника: "
side_c = gets.chomp.to_f

if side_a > side_b && side_a > side_c
	hypotenuse = side_a
	cat1 = side_b
	cat2 = side_c
elsif side_b > side_a && side_b > side_c
	hypotenuse = side_b
	cat1 = side_a
	cat2 = side_c
else 
	hypotenuse = side_c
	cat1 = side_a
	cat2 = side_b
end

pifagor = (hypotenuse**2 == cat1**2 + cat2**2) ? true : false
if pifagor
	puts "Треугольник прямоугольный"
elsif cat1 == cat2 && pifagor
	puts "Треугольник прямоугольный и равнобедренный"
elsif cat1 == cat2 && cat1 == hypotenuse
	puts "Треугольник равнобедренный и равносторонний"
else 
	puts "Это просто треугольник"
end 
		
		


		