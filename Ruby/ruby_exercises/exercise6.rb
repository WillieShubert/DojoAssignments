#Ruby Loops

#the standard while
i = 0
num = 5
while i < num do
   puts "Inside the loop i = #{i}"
   i +=1
end

#how to break out of a while loop
i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

#standard for loop
for i in 0..5
  puts "Value of local variable is #{i}"
end

#how to break out of a for loop
for i in 0..5
  puts "Value of local variable is #{i}"
  break if i == 2
end

#next is a way to skip over certain values in a loop
for i in 0..5
  next if i == 2
  puts "Value of local variable is #{i}"
end
