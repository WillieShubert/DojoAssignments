def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }


def test1
  yield 5
  puts "You are in the method test"
  yield 100
end
test1 { |i| puts "You are in the block #{i}" }


def square(num)
  puts "num is #{num}"
  x= yield(num)
  puts "square of #{num} has a value of #{yield(num)}"
  y = yield(num)*x
  puts "square of #{x} has a value of #{y}"
end
square(5){|i| i*i }
