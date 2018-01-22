#7.5b

while true
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    prng = Random.new
    # Potentially one old Grandma!
    puts 'NO, NOT SINCE ' + prng.rand(1740..1940).to_s + '!'
    break
  end
end