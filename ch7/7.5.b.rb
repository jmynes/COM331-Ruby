#7.5b

while true
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    puts 'NO, NOT SINCE 1938!'
    break
  end
end