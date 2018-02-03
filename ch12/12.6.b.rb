# 12.6b
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

#  Prompt the user for a name of interest
puts 'Whose birthday would you like to know?'
#  Allow the user to tYpe HowEver ThEY LikE
name = gets.chomp.downcase
date = birthdays[name]
puts

#  If there was no matching date
if date == nil
  puts "I'm not sure! Try Google."
else
  #  Undo that downcase I ran on name input
  #  This would require more work to make the name print correctly...
  #  Rails has a .titlecase, which would be ideal for this!
  puts "Their birthday is on: #{(birthdays[name]).capitalize}"
end