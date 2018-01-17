# 8.0
puts "\n\#\# 8.0 \#\#\n\n"	# Not sure why this requires a double \n at the end to work correctly

names = ['Ada', 'Belle', 'Chris']

puts names
puts				# Print \n
puts names[0]
puts names[1]
puts names[2]
puts names[3]		# This is out of range


# Notably, this printed a newline instead of nil for me. Config?

other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'beebee Seedee'
other_peeps[0] = 'beebee Ah-ha'

puts other_peeps


# 8.1
puts "\n\#\# 8.1 \#\#\n\n"	

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
	puts			# I just think this helps readability.
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

puts
# Go-go-gadget-integer-method...
3.times do
	puts 'Hip-Hip-Hooray'
end

puts

2.times do
	puts '...you can say that again...'
end