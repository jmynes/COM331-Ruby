#5.7

my_birth_month	= 'August'
my_birth_day	= 3

# My error at home is 
# 5.7.rb:6:in `+': no implicit conversion of Integer into String (TypeError)
# But the expected error is 
# #<TypeError: can't convert Fixnum into String>

puts my_birth_month + my_birth_day