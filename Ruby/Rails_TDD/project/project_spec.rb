require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'John Doe') # create a new project and make sure we can set the name attribute
	   @project2 = Project.new('Project 2', 'description 2', 'Carl Fresh')
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it 'has a getter and setter for owner attribute' do
    @project1.owner = "Another Owner"
    expect(@project1.owner).to eq("Another Owner")
  end

   it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  describe "project tasks" do
   it 'add_tasks  pushes a single task to the tasks array and a tasks method that returns all the task' do
     1.upto(4) { |n| @project1.add_tasks("Task # #{n}") }
     expect(@project1.tasks).to eq(["Task # 1", "Task # 2", "Task # 3", "Task # 4"])
   end

   it 'method tasks prints every task in the project' do
      1.upto(2) { |n| @project1.add_tasks("Task # #{n}") }
      expect{ @project1.tasks }.to output("Task # 1\nTask # 2\n").to_stdout
    end
  end
end
