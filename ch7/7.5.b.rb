#7.5b

while true
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif response == 'BYE'
    break
  else
    prng = Random.new
    # Potentially one old Grandma!
    # I could also do this with rand(numberhere) and add it to some base
    puts 'NO, NOT SINCE ' + prng.rand(1740..1940).to_s + '!'
  end
end