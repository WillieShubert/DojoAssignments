function Vehicle(name, speed, numWheel, numPassenger){
  // PRIVATE
  var self = this; // HERE WE HAVE DECLARED SELF to EQUAL THE NEW OBJECT WE CREATE WITH NEW
  var distance_traveled = 0;
  var vin = Math.floor(Math.random() * 899999 + 100000)
  var updateDistanceTraveled = function() {
    distance_traveled += self.speed;
  }
/*
Addition of PUBLIC properties to vehicle including name, number of wheels, and the number of passengers
*/
  this.name = name;
  this.speed = speed;
  this.wheels = numWheel;
  this.passengers = numPassenger;
/*
Addition of public methods to vehicle
*/
  this.makeNoise = function(){
    console.log("whoosh");
    return this;
  }
  Vehicle.prototype.getVIN =function(){
    return vin;
  }
  Vehicle.prototype.checkMiles = function(){
    console.log("The "+this.name+ " has traveled "+ distance_traveled+ " miles.");
    return this;
  }
  Vehicle.prototype.move = function(){
    updateDistanceTraveled();
    this.makeNoise();
    console.log("The "+this.name+" has traveled " + distance_traveled +" miles.");
    return this;
  }
}
// Create the Bike Vehicle
var Bike = new Vehicle("Bike", 20, 2, 1);
// here we redefine the makeNoise method for a particular "Instance" or Object
Bike.makeNoise = function() {
  console.log("ring ring!");
  return this;
}
Bike.makeNoise().makeNoise();  //call the redefined method
Bike.checkMiles();
Bike.move().move();
console.log(Bike.getVIN());


// Create the Sedan Vehicle
var Sedan = new Vehicle("Sedan", 110, 4, 6);
Sedan.makeNoise = function() {
  console.log("Honk Honk!")
  return this;
  }

console.log("ROAD TRIP!!!!!!!!!");
console.log(Sedan.getVIN());
Sedan.makeNoise().makeNoise();
Sedan.move().move().move();


// Create the Bus Vehicle
var Bus = new Vehicle("Bus", 75, 6, 10);
Bus.addPassenger = function(newPassenger) {
  Bus.passengers += newPassenger;
  return this;
  }
console.log(Bus.getVIN());
Bus.makeNoise();
console.log("The bus has "+ Bus.passengers+ " passengers.");
Bus.move().addPassenger(10).move().checkMiles();
console.log("The bus has "+ Bus.passengers+ " passengers.");
