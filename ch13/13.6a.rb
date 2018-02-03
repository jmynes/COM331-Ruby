# 13.6a 
puts "\n\#\# 13.6a - Orange Tree \#\#\n\n"

class OrangeTree

  # IT'S ALIVE!!
  def initialize
    @height           = 0
    @orange_count     = 0
    @age              = 0
    @alive            = true
    @life_expectancy  = rand(3..7)
  end

  def height
    if @alive && @height > 0
      puts "The tree is #{@height} feet tall."
    elsif @alive && @height == 0
      puts "The tree was only just planted, it's sprouting!"
    else
      puts 'The tree has hollowed and fallen. It becomes food for future plants.'
    end
  end

  def one_year_passes
    # Max age of 8
    if @alive && @age <= @life_expectancy
      puts
      puts "...ONE YEAR PASSES..."
      @age+=1

      if @age > @life_expectancy
        puts "The tree tragically dies at the ripe young age of #{@age}, I knew him well."
        @alive = false
        height

      else
        @height += @age+1
        puts "The tree grows by #{@age+1} feet, and is now #{@age} years old!"
        
        if @age >= 2
          if @orange_count > 0
            @orange_count = 0 # Oranges overripen, fall to the dirt
            puts "Its old oranges have fallen to the ground, becoming compost for the next generation."
          end
          produce_fruit
        end
      end
    end
  end

  def produce_fruit
    if @age >= 2
      @orange_count = @age * 3
      puts "The tree produces #{@orange_count} oranges, ready for picking!"
    end
  end

  def pick_an_orange
    puts
    puts "> Attempting to pick an orange <"
    puts
    if @orange_count > 0
      puts "You pick the best looking orange from the tree!"
      @orange_count -= 1
      count_the_oranges
    else
      puts "You're being greedy! There aren't any oranges on the tree!!"
    end
  end

  def count_the_oranges
    if @orange_count >= 1
      puts "There are #{@orange_count} oranges left on the tree!"
    else
      puts 'You\'ll have to wait if you want more oranges, there\'s none left!'
    end
  end
end

# Tree is born
tree = OrangeTree.new

# Year 1
tree.one_year_passes

# Year 2, oranges ready!
tree.one_year_passes
7.times{tree.pick_an_orange}

# Year 3
tree.one_year_passes
#5.times{tree.pick_an_orange}

# Year 4-9, definite death by year 9
6.times{tree.one_year_passes}