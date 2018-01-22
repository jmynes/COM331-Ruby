# 6.2.b

# I am certain there's a better way to do this than
# separate line_width and manual spaces in variables.
# Some kind of printf equivalent would likely do it.

line_width = 50
header = 'Table of Contents'
ch1 = 'Chapter 1:   Getting Started'
ch2 = 'Chapter 2:   Numbers'
ch3 = 'Chapter 3:   Letters'
pg1 = 'Page   1'
pg2 = 'Page   2'
pg3 = 'Page   3'

puts(header.center(line_width))
puts
puts(ch1.ljust(line_width/2) + pg1.rjust(line_width/2.25))
puts(ch2.ljust(line_width/2) + pg2.rjust(line_width/2))
puts(ch3.ljust(line_width/2) + pg3.rjust(line_width/2))