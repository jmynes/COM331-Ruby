# 8.1
puts "\#\# 8.1 \#\#\n\n"	

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
	puts	# I just think this helps readability, though it wasn't in the text.
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

puts		# Separate output

# Go-go-gadget-integer-method...
3.times do
	puts 'Hip-Hip-Hooray'
end

puts		# Separate output

2.times do
	puts '...you can say that again...'
end