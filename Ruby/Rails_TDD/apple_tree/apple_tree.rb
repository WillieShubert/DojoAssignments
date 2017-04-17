class Apple_tree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @age = 0
    @height = 0
    @apple_count = 0
  end

  def year_gone_bye
    @age += 1
    @height += (@height*(0.1))
    if self.age < 3
      @apple_count += 0
    elsif self.age > 10
      @apple_count += 0
    else
      @apple_count += 2
    end
    self
  end

  def pick_apples
    puts "Harvesting #{@apple_count} apples"
    @apple_count = 0
  end
end

tree = Apple_tree.new

# tree.year_gone_bye.year_gone_bye.year_gone_bye.year_gone_bye.year_gone_bye
# puts tree.pick_apples
# puts tree.apple_count
