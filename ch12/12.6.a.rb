# 12.6a
puts "\n\#\# 12.6a - Roman Numerals to Integers! \#\#\n\n"

# Last relevant code: 9.5c

#  I edited the book solution on page 190-191
#  I've improved the readability of its variables,
#  and I've commented for what everything does.

#  There's additionally a while loop at the end, and
#  printing a report of non-valid Roman Numerals does
#  not interrupt the loop.

#  Turn a roman numeral into an integer!
#  NOTE: This will accept incorrectly formatted Roman Numerals,
#  such as XXXXX
def roman_to_integer roman
  roman_lookup = {'i' =>    1,
                  'v' =>    5,
                  'x' =>   10,
                  'l' =>   50,
                  'c' =>  100,
                  'd' =>  500,
                  'm' => 1000}

  # Initialize total integer value (updates as we process the string)
  total = 0

  # Prev is used to track the numeral character one over
  prev  = 0
  
  # Look at the string in reverse order, we will add to a running total
  # for each numeral character.
  roman.reverse.each_char do |character|
    # Look up the current numeral character in the roman_lookup table
    numeral = roman_lookup[character]
    
    # If not found in roman_lookup, it's invalid,
    # break and tell the user in loop.
    if !numeral
      puts 'This is not a valid roman numeral!'
      break
    end

    # If the current character is less than the one to its left
    # Subtract one from numeral
    if numeral < prev
      numeral *= -1
    else  # Otherwise, equal
      prev = numeral
    end

    # Add to running total
    total += numeral
  end

  total
end


# Loop asking for input until the user quits.
while true
  puts 'Enter a roman numeral, or type exit to exit: '
  input = gets.chomp.to_s.downcase

  # Exit if input is exit or quit
  if input == 'exit' || input == 'quit'
    break
  else
    result = roman_to_integer input
    puts

    # Handling of valid/invalid Roman Numeral printout as an integer
    if result != 0
      puts "The Roman Numeral #{input.upcase} = #{roman_to_integer input} as an integer"
    else
      puts "The Roman Numeral #{input.upcase} is an invalid Roman Numeral."
    end
  end
end