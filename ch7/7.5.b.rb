#7.5b

# This would be greatly improved with methods
# NOT at all DRY

attempts_to_leave = 0

while attempts_to_leave < 3
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
    attempts_to_leave = 0
  elsif response == 'BYE'
    attempts_to_leave += 1
    if attempts_to_leave < 3
      puts 'HUH?! WHAT DID YOU SAY?!'
    end
  else
    prng = Random.new
    # Potentially one old Grandma!
    # I could also do this with rand(numberhere) and add it to some base
    puts 'NO, NOT SINCE ' + prng.rand(1740..1940).to_s + '!'
    attempts_to_leave = 0
  end
end