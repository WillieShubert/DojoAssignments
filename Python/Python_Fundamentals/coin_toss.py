import random

def coin_toss():
    heads = 0
    tails = 0
    for i in range(0,5000):
        print "Attempt #1: Throwing a coin..."
        random_num = random.random()
        chance = round(random_num)
        if chance == 1:
            heads += 1
            print "Its a head! ... Got {} heads so for and {} tails so far.".format(heads, tails)
        if chance == 0:
            tails += 1
            print "Its a tails! ... Got {} heads so for and {} tails so far.".format(heads, tails)

print coin_toss()
