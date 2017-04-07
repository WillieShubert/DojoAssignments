a = ["Willie", "Carolyn", "Maggie", "James", "Gustavo"]
b = [1,2,3,4,5,6,7,8,9,10]

#using .at
puts a.at(2)+ " is at index position 2"
#using .delete
puts b.delete(8)
#using .push
puts a.push('Carlos')
#using .pop to remove Carlos
puts a.pop
#using .length
puts "Length of b is #{b.length}"
#using .join
puts a.join(', ')
#using .reverse
puts b.reverse
#using .shuffle
puts a.shuffle
#using .insert
puts a.insert(1, "Tommy")
# using .slice
puts b[3..5]
#using .sort to find the reverse order
puts a.sort{ |x,y| y <=> x }
#using values_at()
puts a.values_at(0,3,4)
