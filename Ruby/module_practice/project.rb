class Project
    def initialize(name, description) 
    	@name = name 
    	@description = description
	end

	def elevator_pitch
    	print "Project Name: #{@name}"+", " "Project Description: #{@description}"
    	# puts "Project Description: #{@description}"
  	end 
end
#  using above class to create project objects 
project1 = Project.new("Project 1", "Description 1")

project1.elevator_pitch  # => "Project 1, Description 1"