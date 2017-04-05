puts 'I am in the dog file'
require_relative 'mammal'

class Dog < Mammal # Human inherits from Mammal
	def pet
    	puts "heavy petting"
    	@health += 5
    	self
  	end

	def walk
    	puts "walk me!"
    	@health -= 1
    	self
  	end
	def run
    	puts "rapid panting!"
    	@health -= 10
    	self
  	end
end

doge = Dog.new("Carl")

doge.walk.walk.walk.run.run.pet.display_health