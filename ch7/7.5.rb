#7.5

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
  puts bottles_of_beer.to_s + ' ' + bottle_unit + ' of beer on the wall!'
  puts
end