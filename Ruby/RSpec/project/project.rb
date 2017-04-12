class Project
  attr_accessor :name, :description, :owner, :tasks
  def initialize name, description, owner
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def tasks
    @tasks.each { |task| puts task }
  end
  def add_tasks task
    @tasks << task
  end
end

project = Project.new("Project1", "Description1","Owner1" )
puts project.elevator_pitch
# puts project.tasks
project.add_tasks("First Task")
project.add_tasks("Second Task")
