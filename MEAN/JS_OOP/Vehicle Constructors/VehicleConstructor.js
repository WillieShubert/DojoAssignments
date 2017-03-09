function VehicleConstructor(name, numWheel, numPassenger){
  var vehicle = {}; // the vehicle object that will eventually be returned
/*
Addition of properties to vehicle including name, number of wheels, and the number of passengers
*/
  vehicle.name = name;
  vehicle.wheels = numWheel;
  vehicle.passengers = numPassenger;
/*
Addition of public methods to vehicle
*/
  vehicle.makeNoise = function(){
    console.log("whoosh")
  }
/*
return vehicle
*/
    return vehicle;
}
// Create the Bike Vehicle
var Bike = VehicleConstructor("Bike", 2, 1);
// here we redefine the makeNoise method for a particular "Instance" or Object
Bike.makeNoise = function() {
  console.log("ring ring!")
}
Bike.makeNoise();  //call the redefined method

// Create the Sedan Vehicle
var Sedan = VehicleConstructor("Sedan", 4, 6)
Sedan.makeNoise = function() {
  console.log("Honk Honk!")
  }
Sedan.makeNoise();

// Create the Sedan Vehicle
var Bus = VehicleConstructor("Bus", 6, 10)
Bus.addPassenger = function(newPassengers) {
  Bus.passengers += newPassengers;
  }
Bus.makeNoise();
console.log(Bus.passengers);
Bus.addPassenger(10);
console.log(Bus.passengers);
