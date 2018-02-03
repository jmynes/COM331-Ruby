# 12.6a
puts "\n\#\# 12.6b - Birthday Helper \#\#\n\n"

#  Initialize a hash named birthdays
birthdays = {}

#  Open the file birthdays.txt
File.read('birthdays.txt').each_line do|entry|
  #  Just to standardize things for later
  entry = entry.chomp.downcase

  #  Regex check for name, just assuming it's valid
  # from the beginning of the line until a comma
  name = entry.match(/([^,]+)/)[0].to_s

  #  Regex check for date, starting with a word and 
  #  up through a comma preceding a number (year) til end of line
  date = entry.match(/\w+\s+\d+,.+/).to_s

  #  Put it in the birthday hash!
  birthdays[name] = date
end