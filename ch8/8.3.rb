# 8.3a
puts "\#\# 8.3a - Array sort \#\#\n\n"

wordlist = []

puts "Type as many words as you'd like, one per line. 
Press enter on an empty line when you are finished.\n\n"

input = gets.chomp
while input != ''
  wordlist.push input
  input = gets.chomp
end

puts wordlist.sort.join(', ')

# 8.3b

# Table of contents, revisited. Rewrite your table of contents 
# program on page 36. Start the program with an array holding
# all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information
# from the array in a beautifully formatted table of contents.

puts "\n\#\# 8.3b - Table of contents, revisited \#\#\n\n"

