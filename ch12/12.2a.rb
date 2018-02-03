# 12.2a
puts "\n\#\# 12.2a - Billion (and billions more!) Seconds Old \#\#\n\n"

# I'm going to use a fictional date.

# I wasn't able to apply .in_time_zone('US/Central') and
# Google/StackOverflow is being particularly difficult with search terms
# Giving meaningful answers besides changing time zones client side...

# When I was allegedly born:
born = Time.local(1994, 04, 20, 13, 37)
one_billion = born + 1000000000

puts "I was allegedly born on #{born}"
puts "Theoretically making me one billion seconds old on: #{one_billion}"