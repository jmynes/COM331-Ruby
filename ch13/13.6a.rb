# 13.6a 
puts "\n\#\# 13.6a - Orange Tree \#\#\n\n"

class OrangeTree

  # IT'S ALIVE!!
  def initialize
    @height       = 0
    @orange_count = 0
    @alive        = true
  end

  def height
    if @alive
      puts "The tree is #{@height} feet tall."
    else
      puts 'The tree has hollowed and fallen. It becomes food for future plants.'
    end
  end

  def one_year_passes
    if @alive
      @height += 1
      puts "The tree grows by 1 foot"
      if @orange_count > 0
        @orange_count = 0 # Oranges overripen, fall to the dirt
        puts "Its oranges fall to the ground"
      end
    end
  end

  def produce_fruit
    if @height >= 2
      @orange_count = @height * 6
      puts "The tree produces #{@orange_count} oranges, ready for picking!"
    end
  end

  def pick_an_orange

  end

  def count_the_oranges
    if @orange_count > 1
      puts "There are #{@orange_count} oranges on the tree!"
    else
      puts 'Be patient, there are no oranges on the tree...'
    end
  end
end

tree = OrangeTree.new
tree.height
tree.count_the_oranges

tree.one_year_passes
puts

tree.height
tree.count_the_oranges

tree.one_year_passes
puts

tree.height
tree.count_the_oranges
tree.produce_fruit
#tree.pick_an_orange