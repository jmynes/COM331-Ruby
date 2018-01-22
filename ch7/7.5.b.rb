#7.5b

# This would be greatly improved with methods

attempt_to_leave = 0

while attempt_to_leave < 3
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif response == 'BYE'
    attempt_to_leave += 1
    if attempt_to_leave < 3
      puts 'HUH?! WHAT DID YOU SAY?!'
    end
  else
    prng = Random.new
    # Potentially one old Grandma!
    # I could also do this with rand(numberhere) and add it to some base
    puts 'NO, NOT SINCE ' + prng.rand(1740..1940).to_s + '!'
  end
end