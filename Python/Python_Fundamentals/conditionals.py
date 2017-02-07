age = 15
if age >= 18:
  print 'Legal age'
else:
  print 'You are so young!'


# if age >= 18:
#   print 'Legal age'
# elif age == 17:
#   print 'One more year and you will be of legal age'
# else:
#   print 'You are so young!'


# for loop
for <counter> in <sequence or range>:
  # do something

# for loop example
for count in range(0,10):
	print "looping --", count


# while loop example
count = 0
while count < 10:  # notice the colon
	print "looping --", count
	count += 1

#break statement in a look. This will stop the loop when the value is first found
for val in "string":
  if val == "i":
    break
  print(val)

#continue statement in a loop.
#continue statement rejects -- or skips -- all the remaining statements 
#in the current iteration of the loop, and continues normal execution at the top of the loop. 
for val in "string":
  if val == "i":
    continue
  print(val)

#The pass statement is a null operation; 
#nothing happens when it executes. 
#The pass is almost never seen in final production,
# but can be useful in places where your code has not been completed yet.
for val in my_string:
  pass

#else use in a while loop 
x = 3
y = x
while y > 0:
  print y
  y = y - 1
else:
  print "Final else statement"

#If  our while loop is exited prematurely because of a break or return statement, 
#then the else code section will never be executed
x = 3
y = x
while y > 0:
  print y
  y = y - 1
  if y == 0:
    break
else:
 print "Final else statement"

