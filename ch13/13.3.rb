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
    puts "You roll a #{@number_showing}"
  end

  def cheat(side)
    @number_showing = side
    if side < 1 || side > 6
      puts "You can't cheat THAT hard...#{side} is an invalid number on a d6!!"
      puts "Legitimate roll: #{roll}"
      puts
    else
      puts "You slyly cheat, and the die \"rolls\" a #{side}..."
      puts
    end
  end

end

die = Die.new
puts die.showing
die.cheat(9)
die.cheat(6)
puts die.showing