class Car
  def initialize(make)
    @make = make
    puts "You made a new car! A brand-new #{@make}!"
    @speed = 0
  end

  #car.gas
  def gas
    # CANNOT @speed++ in Ruby!
    @speed +=1
    how_fast
  end

  #car.brake
  def brake # rather than wording it as decelerate, let's call it brake
    # CANNOT @speed-- in Ruby!
    @speed -=1
    how_fast
  end

  # Single responsibility principle, separate this log out of the gas/brake
  car.how_fast
  def how_fast
    puts "You are going #{@speed} miles per hour"
  end
end
