# 10.2
puts "\n\#\# 10.2 \#\#\n\n"
unsorted_wordlist = []

puts 'Enter words separated by enter.'
puts 'An empty line will return a sorted list and exit the program.'
puts

while (entry = gets.chomp) != ''
  unsorted_wordlist.push entry
end

# Wouldn't this be even better than recursive sort?
# Cleverness due to: https://stackoverflow.com/a/28414805
puts unsorted_wordlist.sort_by(&:swapcase)