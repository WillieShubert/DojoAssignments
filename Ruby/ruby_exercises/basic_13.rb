#Print 1-255
for i in 1..255
  puts i
end

# Print odd numbers between 1-255
for i in 1..255
  next if i % 2 == 0
  puts i
end

# Print Sum
sum = 0
for i in 1..255
  puts "New number: #{i} Sum: #{sum}"
  sum +=i
end

#Iterating through an array
x = [1,3,5,7,9,13]
x.each { |i| puts i }

#Find Max
puts x.max

#Find Average
y = [2, 10, 3]
def mean(arr)
    sum = 0
    arr.each {|i| sum+= i}
	  mean = sum / arr.length
    puts mean
end
mean(y)

# Array with Odd Numbers
z = []
(1..255).each { |i| z << i if i.odd? }
puts z

#Greater Than Y
arr = [1, 3, 5, 7]
j = 3
puts arr.count { |i| i > j }

# Square the values
arr = [1, 5, 10, -2]
puts arr.map! { |i| i * i }

# Eliminate Negative Numbers
arr = [1, 5, 10, -2]
puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }

# Max, Min, and Average
arr = [1, 5, 10, -2]
hash = { max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }
puts hash

# Shifting the Values in the Array
arr = [1, 5, 10, 7, -2]
arr.rotate!(1)[arr.length-1] = 0

# Number to String
arr = [-1, -3, 2]
puts arr.each_index { |index| arr[index] = "Dojo" if arr[index] < 0 }
