#9.2a

def double_this num
  num_times_2 = num*2
  puts num.to_s+' doubled is '+num_times_2.to_s
end

double_this 44

# Produces an error of undefined local variable, because it is not local
puts num_times_2.to_s