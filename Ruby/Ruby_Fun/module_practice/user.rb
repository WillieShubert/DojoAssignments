class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "Hello!"
  end
end

steph = User.new("Stephen", "Curry")

u = User.new("John", "Doe")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"

puts steph.initialize
