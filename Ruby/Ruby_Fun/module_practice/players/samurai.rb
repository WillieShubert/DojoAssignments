puts 'I am in the samurai file'
require_relative 'human'

class Samurai < Human
  @@no_of_samurai = 0
  attr_accessor :strength, :intelligence, :stealth, :health
	def initialize(name)
		super 
		@health = 200
		@@no_of_samurai+= 1
	end

	def death_blow(obj)
		if obj.class.ancestors.include?(Human)
			obj.health = 0 
			puts "FATALITY!!!!"
			true
		else
			false
		end
	end

	def meditate
    	puts "heal myself not thyself!"
    	@health = 200
    	self
  	end

  	def self.count
    	@@count
  	end
end

bushido = Samurai.new("Bushido Blade")
bushido.display_stats