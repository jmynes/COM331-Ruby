# 9.4.b

puts "\n\#\# 9.4b \#\#\n\n"

def say_moo number_of_moos
  puts 'mooooo....'*number_of_moos
  'yellow submarine'
end

x = say_moo 3
puts x.capitalize + ', dude...'
puts x            + '.'