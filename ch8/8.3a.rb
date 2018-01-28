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