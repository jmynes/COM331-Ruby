# 2.5a How many seconds old am I?
# Ideally I would rework this to have the answer prompt be on the same line.

puts "\#\# 2.5a How many seconds old am I? \#\#\n\n"	# Not sure why this requires a double \n at the end to work correctly

puts "How many hours are in a year?"
puts 24 * 365

puts "\nHow many minutes are in a decade? This does not account for leap year!"
puts 60 * 24 * 365 * 10

seconds_in_a_year = 60 * 60 * 24 * 365

puts "\nHow many seconds old are you (rounded down in years, ignoring leap year)?"
puts "\nEnter an amount of years:"
years = gets.to_i 

answer = seconds_in_a_year * years
puts "You are roughly #{answer} seconds old!"