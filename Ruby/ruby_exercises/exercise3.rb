#sting methods overview
x = "CodingDojo"

#this is one way to create a new string object
test_string = String.new("I am an instance of the String class")
puts test_string

#these are all methonds on the class of string
puts x.length
puts x.class
puts x.downcase
puts x.upcase

puts x[3]

#this method is case sensative so it doesn't show
puts x.include?('dojo')

# you can include a condition on a puts
puts "This word includes 'Dojo'" if x.include?('Dojo')

#here is the split on a character method
y = 'john, charles, matt, joe'
puts y.split(", ")

#this method checks for an empty string
z = ''
puts "z is empty" if z.empty?

#here are some string interpolation examples
#You should always use double quotes
#but you can also use .to_s to transform an output into a string
puts "24 plus 8 is #{24 + 8}"
puts '24 plus 8 is #{24 + 8}' #see it didn't work with single quote
puts "24 plus 8 is " + (24 + 8).to_s
