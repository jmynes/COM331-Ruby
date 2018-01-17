# 2.5b How many years old is the author?
seconds_in_a_year = 60 * 60 * 24 * 365

puts "\#\# 2.5b How many years old is the author? \#\#\n\n"	# Not sure why this requires a double \n at the end to work correctly

# This was annoying, in the book he said 1,025 million and I kept mistaking it as 1.025 million.
# This resulted in great confusion when Ruby would print out 0 no matter what calculations I did.
author_in_seconds = 1025000000

author_in_years = author_in_seconds / seconds_in_a_year

puts "The author is #{author_in_years} years old"
