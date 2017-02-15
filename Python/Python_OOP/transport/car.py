class Car(object):
    def __init__(self, price, speed, fuel, milage):
        self.price = price
        self.speed = speed
        self.fuel = fuel
        self.milage = milage
        self.tax = 0.12
        if (self.price > 10000):
            self.tax = 0.15
    def displayAll(self):
        print 'Price:', self.price,'Speed:',self.speed, 'Fuel:', self.fuel, 'Milage:',self.milage, 'Tax:', self.tax

car1 = Car(8000,'90mph','Half Full', 75000)
print car1.displayAll()
car2 = Car(18000,'110mph','Almost Full', 15000)
print car2.displayAll()
car3  = Car(12000,'100mph','Almost Empty', 50000)
print car3.displayAll()
car4 = Car(35000,'160mph',' Empty', 5000)
print car4.displayAll()
car5 = Car(5000,'60mph',' Empty', 250000)
print car5.displayAll()
car6 = Car(10000,'100mph',' Full', 100000)
print car6.displayAll()
