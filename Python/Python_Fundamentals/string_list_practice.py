str = "If monkeys like bananas, then I must be a monkey!"
print str.replace("monkey", "alligator")


x = [2,54,-2,7,12,98]
print min(x)
print max(x)

x = ["hello",2,54,-2,7,12,98,"world"]
newX = [x[0]+x[-1]]
print newX


x = [19,2,54,-2,7,12,98,32,10,-3,6]
x.sort()
n = [x[0], x[1]]
x.pop(0)
x.pop(0)
x.insert(0, n )
print x