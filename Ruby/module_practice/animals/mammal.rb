puts 'I am in the mammal file'
class Mammal
	attr_accessor :name, :health
  	def initialize(name)
    	@name = name
    	@health = 150
	end

  def display_health  
    puts "Name: #{@name}"
    puts "Health Level: #{@health}" 
  end
end

zebra = Mammal.new("Dave")
zebra.display_health 