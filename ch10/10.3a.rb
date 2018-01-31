# 10.3a
puts "\n\#\# 10.3a - Shuffle \#\#\n\n"

unshuffled_wordlist = []
shuffled_wordlist = []

puts "Type as many words as you'd like, one per line. 
Press enter on an empty line when you are finished.\n\n"

input = gets.chomp
while input != ''
  unshuffled_wordlist.push input
  input = gets.chomp
end

shuffled_wordlist = unshuffled_wordlist.sort

puts "Unsorted list:                #{unshuffled_wordlist.join(', ')}"
puts "Sorted list with sort method: #{unshuffled_wordlist.sort.join(', ')}"

def sort some_array   #  This "wraps" recursive_sort_shuffle.
  recursive_sort_shuffle some_array, []
end

def recursive_sort_shuffle unsorted_array, sorted_array
  # Start with the first item in the unsorted array
  word = unsorted_array[0]
  index = 0 

  # Iterate through the unsorted array 
  while index < unsorted_array.length
    # Generate a new seed each time
    Random.new_seed
    # Assign current index to word, then shuffle
    word = unsorted_array[index]
    index = (rand 0..unsorted_array.length) # Shuffle, floor of 0, ceiling of array length
  end

  # Delete the entry in the unsorted list
  unsorted_array.delete_at(unsorted_array.index(word))
  # Append the word to the shuffled_array
  sorted_array << word

  # Recursively do this until unsorted array is 0
  if unsorted_array.length > 0
    recursive_sort_shuffle(unsorted_array, sorted_array)
  else
    puts "Shuffled list:                #{sorted_array.join(', ')}"
  end
end

# Main
sort unshuffled_wordlist