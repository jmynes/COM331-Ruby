#7.5

bottles_of_beer = 99
while bottles_of_beer >= 1
  puts bottles_of_beer.to_s + ' bottles of beer on the wall, ' + bottles_of_beer.to_s + ' bottles of beer!'
  bottles_of_beer -= 1
  puts 'Take one down, pass it around'
  puts bottles_of_beer.to_s + ' bottles of beer on the wall!'
  puts
end