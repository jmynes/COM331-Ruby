# 6.6

# Is this a configuration problem?
# Outputs were different from expectations

# Expected 3.14159265358979
# Received 3.141592653589793
puts (Math::PI)

# Expected 2.71828182845905
# Received 2.718281828459045
puts (Math::E)

# Expected 0.5000000000000001
# Received 0.9999999999999999
puts (Math.cos(Math::PI/3))

# Expected 1.0
# Received 0.9999999999999999
puts (Math.tan(Math::PI/4))

# Expected 2.0
# Received 2.0 as anticipated
puts (Math.log(Math::E**2))

# Expected 1.61803398874989
# Received 1.618033988749895
puts ((1 + Math.sqrt(5))/2)