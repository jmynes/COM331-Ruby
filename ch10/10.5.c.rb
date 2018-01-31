# 10.5.c

puts "\n\#\# 10.5.c - 99 Bottles of Beer on the Wall: Reloaded\#\#\n\n"
# Built on top of 7.5a

# This works, but could be improved to read and execute better.
# Lots of ifs in this while loop, I believe some are redundant.

bottles_of_beer = 99
bottle_unit = "bottles"

while bottles_of_beer >= 1
  if bottles_of_beer != 1
    bottle_unit = "bottles"
  else
    bottle_unit = "bottle"
  end

  puts bottles_of_beer.to_s + ' ' + bottle_unit + ' of beer on the wall, ' + bottles_of_beer.to_s + ' ' + bottle_unit + ' of beer!'
  bottles_of_beer -= 1
  puts 'Take one down, pass it around'
  
  if bottles_of_beer == 0 
    bottle_unit = "bottles"
  end

  puts bottles_of_beer.to_s + ' ' + bottle_unit + ' of beer on the wall!'
  puts
end

## COME BACK HERE