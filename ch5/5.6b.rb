#5.6

puts 'What\'s your favorite number?'
number = gets.chomp
puts 'HA! What a puny number, ' + number + '?!'
better_number = number.to_i + 1
puts 'I bet you haven\'t even heard of a number as large as ' + better_number.to_s + '! Egg on your face, huh?'