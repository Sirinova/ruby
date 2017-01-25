vow = ["а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я"]
vowels = {}
('а'..'я').each_with_index {|l, ind| vowels[l] = ind + 1 if vow.include?(l)}
puts  vowels