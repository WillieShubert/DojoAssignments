puts 'I am in the ninja file'
require_relative 'human'


class Ninja < Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize(name)
    	super 
    	@stealth = 175
	end

	def steal(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
			self.health += 10 
			puts "JACK MODE!!!!"
			true
		else
			false
		end
	end

	def get_away
  		puts "SNEAK MODE!"
  		@health -= 15
  		self
  	end
end

akira = Ninja.new("Akira")

akira.display_stats
