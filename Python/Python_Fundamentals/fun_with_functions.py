def odd_even():
	for x in range(1,2000):
		if x % 2 == 0:
			print 'Number is {}. This is an even number' .format(x)
		else: 
			print "Number is {}. This is an odd number" .format(x)
odd_even()



def multiply(inputList):	
	for item in range(len(inputList)-1):  
		newList = [item*2 for item in inputList]
	print(newList)

myList = [2,4,10,16]

print multiply(myList)

