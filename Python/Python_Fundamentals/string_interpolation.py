
first_name = "Zen"
last_name = "Coder"
print "My name is {} {}".format(first_name, last_name)
#<string>.format() is the way to do string interpolation


#<string>.capitalize() is a built in string method 
my_string = 'hello world'
print my_string.capitalize()
# the output would be:
# Hello World

#<string>.lower() is a built in string method 
my_string = 'Hello WORLD'
print my_string.lower()
# the output would be:
# hello world

#<string>.swapcase() is a built in string method 
my_string = 'Hello WORLD'
print my_string.swapcase()
# the output would be:
# hELLO world

#<string>.upper() is a built in string method 
my_string = 'hello world'
print my_string.upper()
# the output would be:
# HELLO WORLD

#<string>.find(<substring>)is a built in string method 
# which returns the index or location of the substring
my_string = "hello world"
print my_string.find("el")
# the output would be:
# 1

# <string>.replace(<old>, <new> [, max]) 
#returns a copy of the string with all occurrences of substring old replaced by new. 
my_string = "hello world"
print my_string.replace("world", "kitty")
# the output would be:
# hello kitty

# <string>.replace(<old>, <new> [, max]) 
# nly the first number of times indicated in max will you have the substring old replaced.
my_string = "egg, egg, Spam, egg and Spam"
print my_string.replace("egg", "Spam", 2)
# the output would be:
# Spam, Spam, Spam, egg and Spam
# notice that only the first 2 "egg" matches were replaced in the string.


