# 11.3
puts "\n\#\# 11.3 \#\#\n\n"

#  The filename doesn't have to end
#  with ".txt", but since it is valid
#  text, why not?
filename    = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that ' +
              'I will never mention gazpacho soup again'

#  The 'w' here is for write-access to the file,
#  since we are trying to write to it
File.open filename, 'w' do |f|
  f.write test_string
end # Ruby knows to close the file here!

read_string = File.read filename

puts(read_string == test_string)