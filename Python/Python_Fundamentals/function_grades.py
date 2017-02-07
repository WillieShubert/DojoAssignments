
import random

def grades():
    for i in range(0,10):
        random_num = random.randint(1,100)
        # grade = None
        if random_num in range (1,60):
            grade = "F"
        elif random_num in range (60,70):
            grade = "D"
        elif random_num in range (70,80):
            grade = "C"
        elif random_num in range (80, 90):
            grade = "B"
        elif random_num in range (90,100):
            grade = "A"
        print("Score:{}; Your grade is a {}" .format(random_num, grade))
print grades()
