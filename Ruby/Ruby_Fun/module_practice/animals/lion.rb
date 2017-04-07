puts 'I am in the lion file'
require_relative 'mammal'

class Lion < Mammal # Human inherits from Mammal

  def initialize(name)
    super 
    @health = 170
  end

	def eat_humans
    puts "Don't Eat Pork, Eat People"
    @health += 20
    self
  end

	def fly
  	puts "So Soaring!"
  	@health -= 10
  	self
  end

	def attack_town
  	puts "Iron Lion from Zion!"
  	@health -= 50
  	self
  end

  def display_health
    puts "This is a Lion "
    super
  end
end

rastafari = Lion.new("Marcus Garvey")
rastafari.attack_town.attack_town.attack_town.fly.fly.display_health