class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize(name)
		@name = name
		@strength = 3
	  	@intelligence = 3 
	  	@stealth = 3
	  	@health = 100
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -=10
			puts "ATTACK!!!!"
			true
		else
			false
		end
	end

	def display_stats  
    	puts "Name: #{@name}"
    	puts "Health Level: #{@health}"
    	puts "Attributes: strength #{@strength}, intelligence #{@intelligence}, stealth #{@stealth}"
    	puts "-__-__-__-__-__-__-__-__-__-__-__-__-__-__-__-__-" 
  	end
end

thor = Human.new('Thor')
oden = Human.new('Oden')

puts thor.attack(oden)
puts oden.display_stats

