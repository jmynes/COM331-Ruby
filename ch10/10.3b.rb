# 10.3b
puts "\n\#\# 10.3b - Updated Sort Dictionary Edition \#\#\n\n"

unsorted_wordlist = []
sorted_wordlist = []

puts "Type as many words as you'd like, one per line. 
Press enter on an empty line when you are finished.\n\n"

input = gets.chomp
while input != ''
  unsorted_wordlist.push input
  input = gets.chomp
end

sorted_wordlist = unsorted_wordlist.sort

puts "Unsorted list:                #{unsorted_wordlist.join(', ')}"
puts "Sorted list with sort method: #{sorted_wordlist.join(', ')}"

def sort some_array   #  This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  # Start with the assumption the first item is the smallest in the unsorted array
  smallest = unsorted_array[0]
  index = 0 

  # Iterate through the unsorted array 
  while index < unsorted_array.length
    # If the current array index is smaller than the current smallest 
    if (unsorted_array[index].downcase < smallest.downcase)
      smallest = unsorted_array[index]  # Reassign smallest
    end
    index += 1
  end

  # Delete the entry in the unsorted list
  unsorted_array.delete_at(unsorted_array.index(smallest))
  # Append the smallest to the sorted_array
  sorted_array << smallest

  # Recursively do this until unsorted array is 0
  if unsorted_array.length > 0
    recursive_sort(unsorted_array, sorted_array)
  else
    puts "Sorted list manually:         #{sorted_array.join(', ')}"
  end
end

# Main
sort unsorted_wordlist