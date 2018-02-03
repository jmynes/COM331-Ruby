# 13.3
puts "\n\#\# 13.3 \#\#\n\n"

# This should likely have a seed...
class Die
  def initialize
    #  I'll just roll the die, though we could do something else
    #  if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing