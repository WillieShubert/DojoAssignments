x = (1..5)

puts "Class Name: #{x.class}"
puts "It does include 3" if x.include? 3
puts "The last number of this range is "+ x.last.to_s
puts "The max number of this range is "+ x.max.to_s
puts "The min number of this range is "+ x.min.to_s

y= ('a'..'k')
puts y.to_a.shuffle.to_s
