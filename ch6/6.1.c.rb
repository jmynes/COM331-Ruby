# 6.1.c

# I could probably find a way to figure out the amount of letters
# in a string stripping its spaces, but the book didn't ask me
# to and that's much more complicated than what this chapter requests.

puts 'Hello there, and what\'s your first name?'
first = gets.chomp
puts 'Middle?'
middle = gets.chomp
puts 'And last?'
last = gets.chomp
full_name = first + ' ' + middle + ' ' + last
full_name_no_spaces = first + middle + last
puts 'Hey, ' + full_name + '! Did you know there are ' + full_name_no_spaces.length.to_s + ' characters in your name?'