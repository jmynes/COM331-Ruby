#5.6

puts 'Hello there, and what\'s your first name?'
first = gets.chomp
puts 'Middle?'
middle = gets.chomp
puts 'And last?'
last = gets.chomp
full_name = first + ' ' + middle + ' ' + last
puts 'Your name is ' + full_name + '? What a lovely name!'
puts 'Pleased to meet you, ' + full_name + '. :)'