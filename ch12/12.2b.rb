# 12.2b
puts "\n\#\# 12.2b - Happy Birthday \#\#\n\n"

# Initialize today
today = Time.now


# Ideally we would use something closer to this probably
# puts "Enter your birthdate in the format dd/mm/yyyy:"
# birthdate = gets.chomp.to_i.split("/")
# ...

# Prompt user for birth year
puts "Enter your birth year:"
year = gets.chomp.to_i

# Prompt user for birth month
puts "Enter your birth month:"
month = gets.chomp.to_i

# Prompt user for birth day
puts "Enter your birth day"
day = gets.chomp.to_i

age = today.year - year

if today.month - month < 0
  age -= 1
elsif today.day - day < 0
  age -= 1
end

#born = Time.local(year, month, day)
puts
#puts "You were born on #{born}?"
puts "That makes you #{age} years old!"
puts "Time for birthday punches!"
puts

punch = 0
age.times{
  punch += 1
  if punch > 1
    puts "*#{punch} punches in the arm*"
  else
    puts "*#{punch} punch in the arm*"
  end
}