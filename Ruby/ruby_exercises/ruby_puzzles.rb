# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32.
# Print the sum of all numbers in the array.
# Also have the function return an array that only include numbers that are greater than 10
num_ary = [3,5,1,2,7,9,8,13,25,32]
def num_puzzle(ary)
  puts ary.inject(:+)
  big10 = []
  ary.each { |i| big10.push i if i > 10 }
  print big10
end
num_puzzle(num_ary)

# # Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# # Shuffle the array and print the name of each person.
# # Have the program also return an array with names that are longer than 5 characters.
str_ary = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
str_ary.shuffle
puts str_ary
y = []
str_ary.each { |i| y.push i if i.length >5 }
print y



##Create an array that contains all 26 letters in the alphabet
ab = ("a".."z").to_a
# # Shuffle the array and display the last letter of the array.
print ab.shuffle[-1]

shuffled = ab.shuffle
puts "#{shuffled.first} is a vowel" if ["a","e","i","o","u"].include? shuffled.first

# #Generate an array with 10 random numbers between 55-100.
random_ary = Array.new(10) { rand(55...100) }
print random_ary.sort
puts random_ary.max
puts random_ary.min


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
str = ""
5.times { str << rand(65..90).chr }
puts str

# Generate an array with 10 random strings that are each 5 characters long
string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
print string_array


# # Create a random string that is 5 characters long
def random_string
  for i in 1..5
    print (65+rand(26)).chr
  end
end
random_string
#Generate an array with 10 random strings that are each 5 characters long
x = []
for i in 0..9
  x.push(random_string)
end
print x
