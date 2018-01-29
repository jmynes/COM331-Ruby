# 9.5c
puts "\n\#\# 9.5c - \"Modern\" Roman Numerals\#\#\n\n"

# Was still stumped, pressed for time, improved upon:
# https://github.com/callahanchris/Learn-to-Program/blob/master/Chapter_09/modern_roman_numerals.rb
#
# I reinstated the temp units for ease of calculation this time around, and kept the loop for input.

def roman_numeral num
  
  if num >= 1000
    thousands = 'M' * (num / 1000)
  end

  # We now account for cases of 400 and 900 (CD, CM, respectively)
  # CCC=300, CD=400, D=500, DCCC=800, CM=900
  if num >= 100
    temp_hundreds = (num % 1000) / 100
    if temp_hundreds == 9
      hundreds = 'CM'
    elsif (temp_hundreds < 9 && temp_hundreds > 5)
      hundreds = 'D' + 'C' * (temp_hundreds - 5)
    elsif temp_hundreds == 5
      hundreds = 'D'
    elsif temp_hundreds == 4
      hundreds = 'CD'
    else
      hundreds = 'C' * temp_hundreds
    end
  end
  
  # We now account for cases of 40 and 90 (XL, XC, respectively)
  # XXX=30, XL=40, L=50, LXXX=80, XC=90
  if num >= 10
    temp_tens = (num % 100) / 10
    if temp_tens == 9
      tens = 'XC'
    elsif (temp_tens < 9 && temp_tens > 5)
      tens = 'L' + 'X' * (temp_tens - 5)
    elsif temp_tens == 5
      tens = 'L'
    elsif temp_tens == 4
      tens = 'XL'
    else
      tens = 'X' * temp_tens
    end
  end
  
  # We now account for cases of 4 and 9 (IV, IX, respectively)
  # III=3, IV=4, V=5, XIII=8, IX=9
  if num > 0
    temp_ones = num % 10
    if temp_ones == 9
      ones = 'IX'
    elsif (temp_ones < 9 && temp_ones > 5)
      ones = 'V' + 'I' * (temp_ones - 5)
    elsif temp_ones == 5
      ones = 'V'
    elsif temp_ones == 4
      ones = 'IV'
    else
      ones = 'I' * temp_ones
    end
  end
  
  puts "#{num} in \"Modern\" Roman numerals is "+"#{thousands}"+"#{hundreds}"+"#{tens}"+"#{ones}"
end

# For some reason also exits on letters...
puts 'Enter a number, or enter 0 to exit: '
while true
  input = gets.chomp.to_i
  if (input > 0 && input <= 3000)
    roman_numeral input    
  elsif (input == 0)
    puts 'Goodbye!'
    break
  else
    puts 'Please enter an integer between 1 and 3000: '
  end
end