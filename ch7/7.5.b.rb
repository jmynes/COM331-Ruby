#7.5b

while true
  puts 'What would you like to say to Grandma?'
  response = gets.chomp

  # currently the commented out code does not prevent empty responses
  if response != response.upcase #&& response != ''
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    # Would be better with a floor and ceiling, such as prng.rand(1740..1940).to_s
    # But I get:
    # 7.5.b.rb:12:in `<main>': undefined local variable or method `prng' for main:Object (NameError)
    
    # This returns years that did not happen yet but at least have the right amount of digits.
    puts 'NO, NOT SINCE ' +rand(10000).to_s + '!'
    break
  end
end