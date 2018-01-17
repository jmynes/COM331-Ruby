# 8.0
puts "\#\# 8.0 \#\#\n\n"	# Not sure why this requires a double \n at the end to work correctly

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