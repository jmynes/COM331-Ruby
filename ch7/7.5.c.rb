#7.5c

# Does not check if years are valid or in correct order

puts 'What year do you wish to start with?'
start_year = gets.chomp.to_i

puts 'What year do you wish to end with?'
end_year = gets.chomp.to_i

current_year = start_year

while current_year <= end_year
  if (current_year % 400 == 0) || (current_year % 4 == 0) && !(current_year % 100 == 0)
    puts "found " + current_year.to_s
  end
  current_year += 1
end