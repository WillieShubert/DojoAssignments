#Ruby Methods
def hello_world
  puts "hello world"
end
hello_world

#define the inputs in the function def without paranthesis
def say_hello name1, name2
  puts "hello, #{name1} and #{name2}"
end
say_hello "Willie", "Gustavo"

#Create default values for parameters
def say_hello name1="Willie", name2="Gustavo"
  puts "hello, #{name1} and #{name2}"
end
say_hello "Willie"

#You can always override a default return value
def say_hello name1="Willie", name2="Gustavo"
  "hello, #{name1} and #{name2}"
end
puts say_hello "Maggie", "Carolyn"

#how to break out of a function if conditions aren't met
def say_hello name1, name2
  if name1.empty? or name2.empty?
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello "James", ""
