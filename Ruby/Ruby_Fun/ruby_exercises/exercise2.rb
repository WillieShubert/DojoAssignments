# exercise for how to print a puts

x = 5
y = 10
z = x*y

puts z
#puts always output to a single line
first_name = "Willie"
last_name = "Shu"

puts "Your name is", first_name, last_name

#unless you concat with plus +
puts "Your name is "+first_name+" "+last_name

#you can also insert a variable into a string with this notation
puts "Your first name is #{first_name} and last name is #{last_name}"

#You can also pass in an array of values like this
puts "Your first name is %s and last name is %s" %[first_name,last_name]

w = 50
#here puts the number variable into the string
puts "value of w is #{w}"
#here is another way to put in the variable into the string
puts "value of w is %d" %w

puts "I am 5'10\" tall"
