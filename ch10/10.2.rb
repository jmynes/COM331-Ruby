# 10.2
puts "\n\#\# 10.2 \#\#\n\n"
unsorted_wordlist = []

#def sort some_array  #  This "wraps" recursive_sort.
#  recursive_sort some_array, []
#end

puts 'Enter words separated by enter.'
puts 'An empty line will return a sorted list and exit the program.'
puts


while (entry = gets.chomp) != ''
  unsorted_wordlist.push entry
end

puts unsorted_wordlist.sort

