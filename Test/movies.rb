movies = {Фи: 3, Ль: 2, Мы: 4}

puts "Что вы хотите сделать?"
puts "'1' чтобы добавить фильм"
puts "'2' чтобы обновить рейтинг фильма"
puts "'3' чтобы вывести список всех фильмов"
puts "'4' чтобы удалить фильм"

choice = gets.chomp

case choice
	when "1"
		puts "Какой фильм хотите добавить?"
		title = gets.chomp.to_sym
		if movies[title].nil?
			puts "Какой рейтинг у фильма? (Выберите цифру от 0 до 4.)"
			rating = gets.chomp.to_i
			movies[title] = rating
			puts "'#{title}' добавлен в список с рейтингом #{movies[title]}."
		else
			puts "Фильм есть в списке с рейтингом #{movies[title]}."
		end

	when "2"
		puts "Рейтинг какого фильма хотите обновить?"
		title = gets.chomp.to_sym
		if movies[title].nil?
			puts "Фильм в списке не найден!"
		else
			puts "Какой новый рейтинг у фильма?"
			rating = gets.chomp.to_i
			movies[title] = rating
			puts "Рейтинг фильма '#{title}' обновлён на #{movies[title]}."
		end

	when "3"
		movies.each{|title, rating| puts "#{title}: #{rating}"}

	when "4"
		puts "Какой фильм хотите удалить?"
		title = gets.chomp.to_sym
		if movies[title].nil?
			puts "Фильм в списке не найден"
		else
			movies.delete(title)
			puts "Фильм '#{title}' удалён."
		end
	else
		puts "Команда не найдена!"
end
			

		