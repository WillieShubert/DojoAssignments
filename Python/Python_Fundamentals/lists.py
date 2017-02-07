drawer = ['documents', 'envelopes', 'pens']
#access the drawer with index of 0 and print value
print drawer[0]  #prints documents
#access the drawer with index of 1 and print value
print drawer[1] #prints envelopes
#access the drawer with index of 2 and print value
print drawer[2] #prints pens

# <list>.append(<new_element>)
# Appends a new item onto the end of the given list. 
x = [1,2,3,4,5]
x.append(99)
print x
#the output would be [1,2,3,4,5,99]

#<list>.insert(<index>, <new_element>) 
#Inserts a new item into the list at the given index
x = [1,2,3,4,5]
x.insert(2,99)
print x
#the output would be [1,2,99,3,4,5]

#<list>.remove(<element>) 
#Remove the first item from the list whose value is provided.
x = [1,2,3,4,5]
x.remove(3)
print x
#the output would be [1,2,4,5]

#<list>.pop(<optional_index>)
# Remove the item at a given position
x = [1,2,3,4,5]
x.pop()
print x
#the output would be [1,2,3,4]
y = [10,11,12,13,14]
y.pop(1)
print y
#the output would be [10,12,13,14]

#<list>.sort() 
# Sort in ascending order by numerical value, or alphabetically in the case of strings.
x = [99,4,2,5,-3];
x.sort()
print x
#the output would be [-3,2,4,5,99];
print x[:]
#the output would be [99,4,2,5,-3]
print x[1:]
#the output would be [4,2,5,-3];
print x[:4]
#the output would be [99,4,2,5]
print x[2:4]
#the output would be [2,5];
