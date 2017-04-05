puts 'I am in the wizard file'
require_relative 'human'


class Wizard < Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize(name)
   		super 
   		@health = 50
    	@intelligence = 25
  	end

  	def heal
    	puts "heal myself not thyself!"
    	@health += 10
    	self
  	end

	def fireball(obj)
	if obj.class.ancestors.include?(Human)
		obj.health -=20
		puts "ATTACK!!!!"
		true
	else
		false
	end
end

gandolf = Wizard.new("Gandolf")

gandolf.display_stats