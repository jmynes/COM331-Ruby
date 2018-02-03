# 13.6a 
puts "\n\#\# 13.6a - Orange Tree \#\#\n\n"

class OrangeTree

  # IT'S ALIVE!!
  def initialize
    @height       = 0
    @orange_count = 0
    @age          = 0
    @alive        = true
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
    if @alive
      if @age > 5
        puts "The tree tragically dies at the ripe young age of #{@age}, I knew him well."
        @alive = false
      end

      @age += 1
      @height += @age+1
      puts
      puts "The tree grows by #{@age+1} feet, and is now #{@age} years old!"
      if @orange_count > 0
        @orange_count = 0 # Oranges overripen, fall to the dirt
        puts "Its old oranges fall to the ground, becoming compost."
      end
      puts
    end
  end

  def produce_fruit
    if @age >= 2
      @orange_count = @age * 3
      puts "The tree produces #{@orange_count} oranges, ready for picking!"
    end
  end

  def pick_an_orange
    puts "You pick the best looking orange from the tree!"
    @orange_count -= 1
    count_the_oranges
  end

  def count_the_oranges
    if @orange_count > 1
      puts "There are #{@orange_count} oranges left on the tree!"
    else
      puts 'Be patient, there are no oranges on the tree...'
    end
  end
end

tree = OrangeTree.new
tree.height
tree.count_the_oranges

tree.one_year_passes

tree.height
tree.count_the_oranges

tree.one_year_passes

tree.height
tree.count_the_oranges
tree.produce_fruit
tree.pick_an_orange
tree.pick_an_orange

tree.one_year_passes
tree.height
tree.count_the_oranges
tree.produce_fruit
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange