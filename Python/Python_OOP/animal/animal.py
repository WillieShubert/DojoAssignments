class Animal(object):
    def __init__(self, name):
      print 'New Animal!!!'
      self.name = name
      self.health = 100
    # define methods
    def displayHealth(self):  # pass self into all methods to access attributes
        print str(self.name)
        print "Health: "+str(self.health)
    def walk(self):
        self.health -= 1
        return self
    def run(self):
        self.health -= 5
        return self

animal1 = Animal('animal')
animal1.run().run()
print animal1.displayHealth()
#
class Dog(Animal):
    def __init__(self, name):
        super(Dog, self).__init__(name)
        self.health = 150
    def pet(self):
        self.health += 5
        return self

mydog = Dog('Dog')
mydog.walk().walk().walk().run().run().pet()
print mydog.displayHealth()

class Dragon(Animal):
    def __init__(self, name):
        super(Dragon, self).__init__(name)
        self.health = 170
    def fly(self):
        self.health -= 10
        return self

fire = Dragon('Charles')
fire.walk().walk().walk().run().run().fly().fly()
print "This is a Dragon!!"
print fire.displayHealth()

animal2 = Animal('Dreamer')
animal2.run().run().pet().fly() #this doesn't work :-)
print animal2.displayHealth()
