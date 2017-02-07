my_list = [1, 'Zen', 'hi']
print len(my_list)
# len()Returns the number of items in a sequence.
# the output would be 3

# max() returns the largest item in the sequence
my_list = [1, 7, 3]
print max(my_list)
# the output would be 7

# min() returns the smallest item in the sequence
my_list = [1, 7, 3]
print min(my_list)
# the output would be 1

# any() returns True if there exists any item in the sequence which is True.
my_list = [0, 'hi', '']
print any(my_list)
# the output would be True since a string would equate to true in this case
my_list = [0, '']
print any(my_list)
# the output would be False since 0 (zero) and an empty string will both be false

# all() returns True if all items in the sequence are True.
my_list = [0, 'Zen', '']
print all(my_list)
# the output would be False
my_list = [4, 'hi']
print all(my_list)
# the output would be True

