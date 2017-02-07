#print odd values from 1-1000
for x in range(1000):
	if x % 2 == 0:
		continue
	print(x)

#print multiples of 5  from 1-1000000
for x in range(1000000):
	if x % 5 != 0:
		continue
	print(x)

#using the python sum function
a = [1, 2, 5, 10, 255, 3]
print sum(a)

#using the python sum function and legnth function to calculate the average
a = [1, 2, 5, 10, 255, 3]
print sum(a)/len(a)