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
# 9.5.c Modern Roman Numerals
class Integer
  # 10.1b
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  # 9.5b
  def old_roman_numeral

    if self >= 1000
      thousands = 'M' * (self / 1000)
    end

    if self >= 100
      hundreds = (self % 1000) / 100
      if hundreds >= 5
        hundreds = 'D' + 'C' * (hundreds - 5)
      else
        hundreds = 'C' * ((self % 1000) / 100)
      end
    end

    if self >= 10
      tens = (self % 100) / 10
      if tens >= 5
        tens = 'L' + 'X' * (tens - 5)
      else
        tens = 'X' * ((self % 100) / 10)
      end
    end

    if self >= 1
      ones = (self % 10) / 1
      if ones >= 5
        ones = 'V' + 'I' * (ones - 5)
      else
        ones = 'I' * ((self % 10) / 1)
      end
    end

    puts "#{self} in old-school Roman numerals is "+"#{thousands}"+"#{hundreds}"+"#{tens}"+"#{ones}"
  end
end

# Call my recursive_sort_shuffle method from the Array class
puts [1,2,3,4,5].shuffle

# Call the author's factorial method from the Integer class
puts 7.factorial

# Call my old_roman_numeral method from the Integer class
puts 99.old_roman_numeral