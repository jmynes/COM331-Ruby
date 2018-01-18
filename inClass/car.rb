class Car
  def initialize(make)
    @make = make
    puts "You made a new car! A brand-new #{@make}!"
    @speed = 0
  end

  def accelerate
    # CANNOT @speed++ in Ruby!
    @speed +=1
    puts "You are going #{@speed} miles per hour"
  end
end
