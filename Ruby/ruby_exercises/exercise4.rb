#conditional syntax in ruby is pretty standard but no paranthesis is need

x =5
if x > 2
    puts "x is greater than 2"
elsif x < 2 and x >0
    puts "x is 1"
else
    puts "I cannot guess the number"
end
#you could also put the condition directly into the puts statement
puts  "x is not  2" if x != 2
puts "x is greater than 2" if x >2

#here is the use of case with range conditions
age = 5

case age
when 0..2
  puts "baby"
when 3..6
  puts 'little kid'
when 7..12
  puts "youth"
else
  puts "adult"
end

#Here we have our conditional act like a bar bouncer
if age >= 21
  puts "Welcome to the party"
else
  puts "Not yet ready to party"
end
#this is another way write the bouncer conditional with a negative
if !(age < 21)
  puts "Welcome to the party"
else
  puts "I said not yet!"
end

##use the && to require multipe conditions
number = 30
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

#We combine if and else statements with an expression that evaluates to true or false.
#In Ruby, only two things are false: nil and false.
#This means that an empty string returns true.
if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end
