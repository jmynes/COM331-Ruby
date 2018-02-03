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
      @height
    else
      'The tree has hollowed and fallen. It becomes food for future plants.'
    end
  end

  def one_year_passes
    if @alive
      @height += 1
      @orange_count = 0 # Oranges overripen, fall to the dirt
    end
  end

  def produce_fruit
    @orange_count = @height * 6
  end

  def pick_an_orange

  end

  def count_the_oranges
    if @orange_count > 1
      "There are #{@orange_count} oranges on the tree!"
    else
      'Be patient, there are no oranges on the tree...'
    end
  end
end