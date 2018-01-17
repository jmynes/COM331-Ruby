# 8.3
puts "\#\# 8.3 - Our first code on our own in this chapter \#\#\n\n"

wordlist = Array.new

puts "Type as many words as you'd like, one per line. 
Press enter on an empty line when you are finished.\n\n"

input = gets.chomp
while input != ''
  wordlist << input
  input = gets.chomp
end