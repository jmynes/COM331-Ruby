# 9.5b
puts "\n\#\# 9.5b \#\#\n\n"

# Admittedly got stumped and took inspiration from:
# https://github.com/callahanchris/Learn-to-Program/blob/master/Chapter_09/old_roman_numerals.rb
#
# I removed the temporary variable in each section, ostensibly for ease of reading.
# However, I'm not sure it accomplishes that goal. It becomes a bit repetitive.
#
# I also removed the elsif for cases of exactly 5 of a unit, as these were unecessary for correct printing.


def old_roman_numeral number

  if number >= 1000
    thousands = 'M' * (number / 1000)
  end

  if number >= 100
    hundreds = (number % 1000) / 100
    if hundreds >= 5
      hundreds = 'D' + 'C' * (hundreds - 5)
    else
      hundreds = 'C' * ((number % 1000) / 100)
    end
  end

  if number >= 10
    tens = (number % 100) / 10
    if tens >= 5
      tens = 'L' + 'X' * (tens - 5)
    else
      tens = 'X' * ((number % 100) / 10)
    end
  end

  if number >= 1
    ones = (number % 10) / 1
    if ones >= 5
      ones = 'V' + 'I' * (ones - 5)
    else
      ones = 'I' * ((number % 10) / 1)
    end
  end

  puts "#{number} in old-school Roman numerals is "+"#{thousands}"+"#{hundreds}"+"#{tens}"+"#{ones}"
end

old_roman_numeral 1
old_roman_numeral 9
old_roman_numeral 16
old_roman_numeral 1111
old_roman_numeral 666
old_roman_numeral 1337
old_roman_numeral 2999
old_roman_numeral 3000