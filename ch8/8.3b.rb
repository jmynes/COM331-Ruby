# 8.3b - Table of contents, revisited

# Table of contents, revisited. Rewrite your table of contents 
# program on page 36. Start the program with an array holding
# all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information
# from the array in a beautifully formatted table of contents.

puts "\n\#\# 8.3b - Table of contents, revisited \#\#\n\n"

# 6.2.b revisited

# I am still certain there's a better way to do this than
# separate line_width and manual spaces in variables.
# Some kind of printf equivalent would likely do it.

ch = ["Chapter 1:   Getting Started", "Chapter 2:   Numbers", "Chapter 3:   Letters"]
pg = ["Page   1", "Page   2", "Page   3"]

header = 'Table of Contents'
line_width = 50

puts(header.center(line_width))
puts
puts(ch[0].ljust(line_width/2) + pg[0].rjust(line_width/2.25))
puts(ch[1].ljust(line_width/2) + pg[1].rjust(line_width/2))
puts(ch[2].ljust(line_width/2) + pg[2].rjust(line_width/2))