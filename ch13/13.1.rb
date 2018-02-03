# 13.1
puts "\n\#\# 13.1 \#\#\n\n"

# Pass in an unsorted array, and a holder
unsorted = [1, 5, 6, 7, 3, 8]
holder = []

# 10.3a's shuffle sort
class Array
  arr = self

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
end


# 10.1b's factorial
class Integer
  # 10.1b
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
end
