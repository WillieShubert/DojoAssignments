class Bike(object):
    def __init__(self, price, max_speed):
        self.price = price
        self.max_speed = max_speed
        self.miles = 0
    def displayInfo(self):
        print "Price $"+str(self.price)
        print "Max Speed "+str(self.max_speed)
        print "Total miles: "+str(self.miles)
    def ride(self):
        self.miles += 10
        return self
    def reverse(self):
        self.miles -= 5
        return self
#instance 1
bike1 = Bike(500, "23mph")
bike1.ride().ride().ride().reverse()
print bike1.displayInfo()
#instance 2
bike2 = Bike(50, "15mph")
bike2.ride().ride().reverse().reverse()
print bike2.displayInfo()
#instance 3
bike3 = Bike(4000, "30mph")
bike3.reverse().reverse().reverse()
print bike3.displayInfo()
